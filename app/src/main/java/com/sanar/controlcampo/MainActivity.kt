package com.sanar.controlcampo

import android.content.Intent
import android.os.Bundle
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.sanar.controlcampo.ui.FormPage2Activity
import com.sanar.controlcampo.ui.FormViewModel
import org.json.JSONObject
import java.io.OutputStreamWriter
import java.net.HttpURLConnection
import java.net.URL

class MainActivity : AppCompatActivity() {

    private lateinit var editUsuario: EditText
    private lateinit var editPassword: EditText
    private lateinit var flechaLogin: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        editUsuario = findViewById(R.id.editUsuario)
        editPassword = findViewById(R.id.editPassword)
        flechaLogin = findViewById(R.id.flechaLogin)

        flechaLogin.setOnClickListener {
            val usuario = editUsuario.text.toString()
            val password = editPassword.text.toString()

            if (usuario.isBlank() || password.isBlank()) {
                Toast.makeText(this, "Por favor completa todos los campos", Toast.LENGTH_SHORT).show()
            } else {
                hacerLogin(usuario, password)
            }
        }
    }

    private fun hacerLogin(usuario: String, password: String) {
        Thread {
            try {
                val url = URL("http://192.168.1.8/controlcampo/login.php")
                val conn = url.openConnection() as HttpURLConnection
                conn.requestMethod = "POST"
                conn.doOutput = true
                conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded")

                val datos = "usuario=$usuario&password=$password"
                val writer = OutputStreamWriter(conn.outputStream)
                writer.write(datos)
                writer.flush()

                val responseCode = conn.responseCode
                val result = conn.inputStream.bufferedReader().use { it.readText() }

                runOnUiThread {
                    if (responseCode == HttpURLConnection.HTTP_OK) {
                        val json = JSONObject(result)

                        if (json.getBoolean("success")) {
                            Toast.makeText(this, "Bienvenido ${json.getString("usuario")}", Toast.LENGTH_SHORT).show()

                            val intent = Intent(this, FormPage2Activity::class.java)
                            startActivity(intent)
                            finish()
                        } else {
                            Toast.makeText(this, json.getString("message"), Toast.LENGTH_SHORT).show()
                        }
                    } else {
                        Toast.makeText(this, "Error del servidor: $responseCode", Toast.LENGTH_SHORT).show()
                    }
                }

                conn.disconnect()
            } catch (e: Exception) {
                runOnUiThread {
                    Toast.makeText(this, "Error: ${e.message}", Toast.LENGTH_LONG).show()
                }
            }
        }.start()
    }
}