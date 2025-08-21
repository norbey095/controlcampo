package com.sanar.controlcampo

import android.content.Intent
import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import com.sanar.controlcampo.ui.FormPage2Activity

class DashboardActivity : AppCompatActivity() {

    private lateinit var spTrabajo: Spinner
    private lateinit var spMotivo: Spinner
    private lateinit var spCausa: Spinner
    private lateinit var btnGuardar: Button
    private lateinit var btnAnterior: ImageButton
    private lateinit var btnSiguiente: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_dashboard)

        spTrabajo = findViewById(R.id.spTrabajo)
        spMotivo = findViewById(R.id.spMotivo)
        spCausa = findViewById(R.id.spCausa)
        btnGuardar = findViewById(R.id.btnGuardar)
        btnAnterior = findViewById(R.id.btnAnterior)
        btnSiguiente = findViewById(R.id.btnSiguiente)

        val trabajosConMotivos = mapOf(
            "Cambio de acometida" to listOf("Cambiar acometida","Trasladar acometida","Cambiar acometida (motivos técnicos)"),
            "Reparación de Acometida" to listOf("Caja de Registro sin tapa o tapa averiada","Fuga en acometida de alcantarillado","Reparación Caja de registro","Hundimiento en Acometida","Hundimiento en Acometida no imputable al cliente"),
            "Reparación de aliviadero" to listOf("Reparar aliviadero"),
            "Reparación de cámara" to listOf("Cámara de inspección defectuosa","Cámara de inspección no visible","Caja de inspección alcantarillado sin tapa","Caja de inspección alcantarillado con tapa averiada"),
            "Construcción cámara" to listOf("Construir cámara"),
            "Reparación de sumidero" to listOf("Sumidero defectuoso"),
            "Colocación de reja de sumidero" to listOf("Sumidero con reja defectuosa","Sumidero sin reja"),
            "Reparación en red" to listOf("Daño alcantarillado","Daño alcantarillado urgente","Daño reportado por investigación con TV","Fuga alcantarillado","Hundimiento"),
            "Control socioambiental y de tránsito" to listOf("Fichas para PMT","Monitoreo de ruido","Planes de manejo de tránsito","Implementación de programas ambientales"),
            "Referenciación de elemento o red" to listOf("Referenciar elemento o red"),
            "Pavimento" to listOf("Acometida","Daño alcantarillado","Cámara de inspección","Construir cámara","Daño reportado por investigación con TV","Hundimiento","Hundimiento en Acometida","Sumidero")
        )

        val causasEvento = listOf(
            "Acometida en mal estado",
            "Caja de registro en mal estado",
            "Conexión errada",
            "Incumplimiento especificación técnica"
        )

        val trabajos = trabajosConMotivos.keys.toList()

        val adapterTrabajo = ArrayAdapter(this, android.R.layout.simple_spinner_item, trabajos).apply {
            setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        }
        spTrabajo.adapter = adapterTrabajo

        val adapterMotivoInicial = ArrayAdapter(this, android.R.layout.simple_spinner_item, trabajosConMotivos[trabajos[0]]!!).apply {
            setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        }
        spMotivo.adapter = adapterMotivoInicial

        val adapterCausa = ArrayAdapter(this, android.R.layout.simple_spinner_item, causasEvento).apply {
            setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        }
        spCausa.adapter = adapterCausa

        spTrabajo.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(parent: AdapterView<*>, view: android.view.View?, position: Int, id: Long) {
                val motivos = trabajosConMotivos[trabajos[position]] ?: emptyList()
                spMotivo.adapter = ArrayAdapter(this@DashboardActivity, android.R.layout.simple_spinner_item, motivos).apply {
                    setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
                }
            }
            override fun onNothingSelected(parent: AdapterView<*>) {}
        }

        btnGuardar.setOnClickListener {
            val trabajo = spTrabajo.selectedItem?.toString() ?: ""
            val motivo = spMotivo.selectedItem?.toString() ?: ""
            val causa = spCausa.selectedItem?.toString() ?: ""
            Toast.makeText(this, "Guardado:\n$trabajo - $motivo - $causa", Toast.LENGTH_LONG).show()
        }

        btnAnterior.setOnClickListener { val intent = Intent(this, FormInitActivity::class.java)
            startActivity(intent)
            finish()
        }
        btnSiguiente.setOnClickListener {
            Toast.makeText(this, "Ir a siguiente pantalla…", Toast.LENGTH_SHORT).show()
            val intent = Intent(this, FormPage2Activity::class.java)
            startActivity(intent)
            finish()
        }
    }
}
