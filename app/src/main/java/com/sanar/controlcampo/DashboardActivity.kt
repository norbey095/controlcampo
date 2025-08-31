package com.sanar.controlcampo

import android.content.Intent
import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.AutoCompleteTextView
import android.widget.ImageButton
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.sanar.controlcampo.ui.FormPage2Activity

class DashboardActivity : AppCompatActivity() {

    private lateinit var spTrabajo: AutoCompleteTextView
    private lateinit var spMotivo: AutoCompleteTextView
    private lateinit var spCausa: AutoCompleteTextView
    private lateinit var btnAnterior: ImageButton
    private lateinit var btnSiguiente: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_dashboard)

        // Vinculación de vistas
        spTrabajo = findViewById(R.id.spTrabajo)
        spMotivo = findViewById(R.id.spMotivo)
        spCausa = findViewById(R.id.spCausa)
        btnAnterior = findViewById(R.id.btnAnterior)
        btnSiguiente = findViewById(R.id.btnSiguiente)

        // Datos
        val trabajosConMotivos = mapOf(
            "Cambio de acometida" to listOf("Cambiar acometida", "Trasladar acometida", "Cambiar acometida (motivos técnicos)"),
            "Reparación de Acometida" to listOf("Caja de Registro sin tapa o tapa averiada", "Fuga en acometida de alcantarillado", "Reparación Caja de registro", "Hundimiento en Acometida", "Hundimiento en Acometida no imputable al cliente"),
            "Reparación de aliviadero" to listOf("Reparar aliviadero"),
            "Reparación de cámara" to listOf("Cámara de inspección defectuosa", "Cámara de inspección no visible", "Caja de inspección alcantarillado sin tapa", "Caja de inspección alcantarillado con tapa averiada"),
            "Construcción cámara" to listOf("Construir cámara"),
            "Reparación de sumidero" to listOf("Sumidero defectuoso"),
            "Colocación de reja de sumidero" to listOf("Sumidero con reja defectuosa", "Sumidero sin reja"),
            "Reparación en red" to listOf("Daño alcantarillado", "Daño alcantarillado urgente", "Daño reportado por investigación con TV", "Fuga alcantarillado", "Hundimiento"),
            "Control socioambiental y de tránsito" to listOf("Fichas para PMT", "Monitoreo de ruido", "Planes de manejo de tránsito", "Implementación de programas ambientales"),
            "Referenciación de elemento o red" to listOf("Referenciar elemento o red"),
            "Pavimento" to listOf("Acometida", "Daño alcantarillado", "Cámara de inspección", "Construir cámara", "Daño reportado por investigación con TV", "Hundimiento", "Hundimiento en Acometida", "Sumidero")
        )

        val causasEvento = listOf(
            "Acometida en mal estado",
            "Caja de registro en mal estado",
            "Conexión errada",
            "Incumplimiento especificación técnica"
        )

        val trabajos = trabajosConMotivos.keys.toList()

        // Adaptadores
        val adapterTrabajo = ArrayAdapter(this, android.R.layout.simple_dropdown_item_1line, trabajos)
        spTrabajo.setAdapter(adapterTrabajo)

        val adapterMotivoInicial = ArrayAdapter(this, android.R.layout.simple_dropdown_item_1line, trabajosConMotivos[trabajos[0]]!!)
        spMotivo.setAdapter(adapterMotivoInicial)

        val adapterCausa = ArrayAdapter(this, android.R.layout.simple_dropdown_item_1line, causasEvento)
        spCausa.setAdapter(adapterCausa)

        // Dependencia entre Trabajo y Motivo
        spTrabajo.setOnItemClickListener { _, _, position, _ ->
            val motivos = trabajosConMotivos[trabajos[position]] ?: emptyList()
            spMotivo.setAdapter(ArrayAdapter(this, android.R.layout.simple_dropdown_item_1line, motivos))
        }

        // Botones
        btnAnterior.setOnClickListener {
            val intent = Intent(this, FormInitActivity::class.java)
            startActivity(intent)
            finish()
        }

        btnSiguiente.setOnClickListener {
            // Validación rápida
            if (spTrabajo.text.isNullOrEmpty() || spMotivo.text.isNullOrEmpty() || spCausa.text.isNullOrEmpty()) {
                Toast.makeText(this, "Por favor complete todos los campos", Toast.LENGTH_SHORT).show()
            } else {
                val intent = Intent(this, FormPage2Activity::class.java)
                startActivity(intent)
                finish()
            }
        }
    }
}
