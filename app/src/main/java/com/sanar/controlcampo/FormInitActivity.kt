package com.sanar.controlcampo

import android.annotation.SuppressLint
import android.os.Bundle
import android.widget.EditText
import android.widget.Toast
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.google.android.material.datepicker.MaterialDatePicker
import java.text.SimpleDateFormat
import java.util.*
import android.widget.ArrayAdapter
import android.widget.AutoCompleteTextView
import android.view.MotionEvent
import android.widget.ImageButton
import android.content.Intent
import com.sanar.controlcampo.ui.FormPage2Activity
import kotlin.jvm.java
import kotlin.let

class FormInitActivity : AppCompatActivity() {
    @SuppressLint("ClickableViewAccessibility", "MissingInflatedId")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_form_init)
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }

        // 📅 Calendario

        val editFechaInicio = findViewById<EditText>(R.id.editFechaInicio)
        val editFechaFin = findViewById<EditText>(R.id.editFechaFin)

        val formatoFecha = SimpleDateFormat("dd/MM/yyyy", Locale.getDefault())
        var fechaInicioMillis: Long? = null
        var fechaFinMillis: Long? = null

        fun mostrarMaterialDatePicker(editText: EditText, esInicio: Boolean) {
            val datePicker = MaterialDatePicker.Builder.datePicker()
                .setTitleText(if (esInicio) "Selecciona la fecha de inicio" else "Selecciona la fecha de fin")
                .build()

            datePicker.addOnPositiveButtonClickListener { seleccionMillis ->
                val fecha = formatoFecha.format(Date(seleccionMillis))
                editText.setText(fecha)

                if (esInicio) {
                    fechaInicioMillis = seleccionMillis
                    fechaFinMillis?.let {
                        if (seleccionMillis > it) {
                            editFechaFin.text.clear()
                            Toast.makeText(this, "La fecha de inicio no puede ser después de la fecha fin", Toast.LENGTH_SHORT).show()
                        }
                    }
                } else {
                    fechaFinMillis = seleccionMillis
                    fechaInicioMillis?.let {
                        if (seleccionMillis < it) {
                            editFechaFin.text.clear()
                            Toast.makeText(this, "La fecha de fin no puede ser anterior a la fecha de inicio", Toast.LENGTH_SHORT).show()
                        }
                    }
                }
            }

            datePicker.show(supportFragmentManager, "MATERIAL_DATE_PICKER")
        }

        // Eventos al tocar los campos
        editFechaInicio.setOnClickListener {
            mostrarMaterialDatePicker(editFechaInicio, true)
        }

        editFechaFin.setOnClickListener {
            mostrarMaterialDatePicker(editFechaFin, false)
        }

        // Opciones para los desplegables
        val opcionesMunicipio = listOf(
            "Barbosa",
            "Bello",
            "Caldas",
            "Copacabana",
            "Envigado",
            "Girardota",
            "Itagui",
            "La Estrella",
            "Medellín",
            "Sabaneta",
            "Rionegro"
        )
        val opcionesAplicativo = listOf("HIDRO", "MAXIMO")
        val opcionesServicio = listOf(
            "Aguas Combinadas Recolección",
            "Aguas Lluvias Recolección",
            "Aguas Residuales Recolección"
        )
        val opcionesElemento =
            listOf("Aliviadero", "Cámara de Inspección", "Sumidero", "Tubería", "Acometida")
        val opcionesEfectividad = listOf("EFECTIVA", "NO EFECTIVA")
        val opcionesNoEfectividad = listOf(
            "No aplica",
            "Atendido con otra solicitud",
            "Acometida en mal estado",
            "Corresponde a otro servicio",
            "Corresponde atender a otra entidad",
            "Deterioro carpeta asfáltica",
            "Garantía",
            "Información errada",
            "No autorizan trabajos (cliente)",
            "No se contacta cliente",
            "No se encontró daño",
            "Problema interno (Daño interno)",
            "Problemas de orden público",
            "Se encontró atendida",
            "Solicitud mal generada"
        )

        // Referencias a los AutoCompleteTextView
        val autoMunicipio = findViewById<AutoCompleteTextView>(R.id.AutoMunicipio)
        val autoAplicativo = findViewById<AutoCompleteTextView>(R.id.AutoAplicativo)
        val autoServicio = findViewById<AutoCompleteTextView>(R.id.AutoServicio)
        val autoElemento = findViewById<AutoCompleteTextView>(R.id.AutoElemento)
        val autoEfectividad = findViewById<AutoCompleteTextView>(R.id.AutoEfectividad)
        val autoCausaNoEfectividad = findViewById<AutoCompleteTextView>(R.id.AutoCausaNoEfectividad)

        // Adaptadores de listas
        autoMunicipio.setAdapter(ArrayAdapter(this, R.layout.dropdown_item, opcionesMunicipio))
        autoAplicativo.setAdapter(ArrayAdapter(this, R.layout.dropdown_item, opcionesAplicativo))
        autoServicio.setAdapter(ArrayAdapter(this, R.layout.dropdown_item, opcionesServicio))
        autoElemento.setAdapter(ArrayAdapter(this, R.layout.dropdown_item, opcionesElemento))
        autoEfectividad.setAdapter(ArrayAdapter(this, R.layout.dropdown_item, opcionesEfectividad))
        autoCausaNoEfectividad.setAdapter(ArrayAdapter(this, R.layout.dropdown_item, opcionesNoEfectividad))

        // Mostrar el desplegable al tocar (opcional, mejora UX)
        autoMunicipio.setOnTouchListener { _, event ->
            if (event.action == MotionEvent.ACTION_UP) autoMunicipio.showDropDown()
            false
        }
        autoAplicativo.setOnTouchListener { _, event ->
            if (event.action == MotionEvent.ACTION_UP) autoAplicativo.showDropDown()
            false
        }
        autoServicio.setOnTouchListener { _, event ->
            if (event.action == MotionEvent.ACTION_UP) autoServicio.showDropDown()
            false
        }
        autoElemento.setOnTouchListener { _, event ->
            if (event.action == MotionEvent.ACTION_UP) autoElemento.showDropDown()
            false
        }

        // ✅ Validación Efectividad / No Efectividad
        autoEfectividad.setOnItemClickListener { parent, _, position, _ ->
            val seleccion = parent.getItemAtPosition(position).toString()

            if (seleccion == "EFECTIVA") {
                autoCausaNoEfectividad.setText("") // limpiar selección anterior
                autoCausaNoEfectividad.isEnabled = false
                autoCausaNoEfectividad.alpha = 0.5f // visualmente mostrar que está deshabilitado
            } else {
                autoCausaNoEfectividad.isEnabled = true
                autoCausaNoEfectividad.alpha = 1f
            }
        }

        autoEfectividad.setOnTouchListener { _, event ->
            if (event.action == MotionEvent.ACTION_UP) autoEfectividad.showDropDown()
            false
        }
        autoCausaNoEfectividad.setOnTouchListener { _, event ->
            if (event.action == MotionEvent.ACTION_UP) autoCausaNoEfectividad.showDropDown()
            false
        }

        val btnContinuar = findViewById<ImageButton>(R.id.btnContinuar)

        btnContinuar.setOnClickListener {
            val intent = Intent(this, FormPage2Activity::class.java)
            startActivity(intent)
        }
    }
}