package com.sanar.controlcampo.ui

import androidx.lifecycle.ViewModel
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.runtime.mutableStateOf

import kotlin.math.roundToInt
import com.sanar.controlcampo.model.FormItem


/**
 * ViewModel que maneja la lógica de negocio del formulario de ítems
 * Responsable de gestionar los datos, validaciones y operaciones del formulario
 * Sigue el patrón MVVM para separar la lógica de la UI
 */
class FormViewModel : ViewModel() {
    /**
     * Lista observable de ítems del formulario
     * Se actualiza automáticamente la UI cuando cambia
     */
    private val _formItems = mutableStateListOf<FormItem>()
    val formItems: List<FormItem> get() = _formItems

    /**
     * Mapa que relaciona códigos de ítems con sus descripciones detalladas
     * Facilita el autocompletado y la validación de ítems
     */
    val itemDescriptions = mapOf(
        "1,5" to "EXCAVACIÓN DE PILAS EN ROCA (TIPO I). INCLUYE ANILLO DE PROTECCIÓN EN CONCRETO Y REFUERZO",
        "2" to "RELLENO ESTRUCTURAL COMPACTADO",
        "3" to "CIMENTACIÓN CON ZAPATA CORRIDA"
    )

    /** Lista de códigos de ítems disponibles para autocompletado */
    val availableItems = itemDescriptions.keys.toList()

    /** Lista de unidades de medida válidas */
    val availableUnits = listOf("m", "cm", "kg", "M3")

    /**
     * Agrega un nuevo ítem vacío al formulario
     * Se ejecuta cuando el usuario presiona "Agregar fila"
     */
    fun addItem() {
        _formItems.add(
            FormItem(
                item = "",
                descripcion = "",
                unidad = "",
                valorUnitario = "",
                medida1 = "",
                medida2 = "",
                medida3 = ""
            )
        )
    }

    /**
     * Actualiza un ítem específico en la lista
     * Se ejecuta cuando el usuario modifica cualquier campo del formulario
     *
     * @param index Posición del ítem en la lista
     * @param updatedItem Nuevo ítem con los datos actualizados
     */
    fun updateItem(index: Int, updatedItem: FormItem) {
        if (index in _formItems.indices) {
            _formItems[index] = updatedItem
        }
    }

    /**
     * Actualiza un ítem y automáticamente llena su descripción basada en el código seleccionado
     * Se ejecuta cuando el usuario selecciona un ítem desde el desplegable
     *
     * @param index Posición del ítem en la lista
     * @param itemCode Código del ítem seleccionado
     */
    fun updateItemWithDescription(index: Int, itemCode: String) {
        if (index in _formItems.indices) {
            val currentItem = _formItems[index]
            val description = itemDescriptions[itemCode] ?: ""
            _formItems[index] = currentItem.copy(
                item = itemCode,
                descripcion = description
            )
        }
    }

    /**
     * Elimina un ítem específico de la lista
     *
     * @param index Posición del ítem a eliminar
     */
    fun removeItemAt(index: Int) {
        if (index in _formItems.indices) {
            _formItems.removeAt(index)
        }
    }

    /**
     * Calcula el subtotal de un ítem específico
     * Convierte las medidas y valor unitario a números y realiza el cálculo
     *
     * @param item Ítem para calcular el subtotal
     * @return Subtotal calculado como Double
     */
    fun calculateSubtotal(item: FormItem): Double {
        // Convert string measures to numbers (Double or Float)
        // Use toDoubleOrNull() to safely convert, providing 0.0 if conversion fails
        val medida1Num = item.medida1.toDoubleOrNull() ?: 0.0
        val medida2Num = item.medida2.toDoubleOrNull() ?: 0.0
        val medida3Num = item.medida3.toDoubleOrNull() ?: 0.0

        // Perform numerical addition
        val totalMedidasNum = medida1Num + medida2Num + medida3Num

        // Convert string valorUnitario to a number
        val valorUnitarioNum = item.valorUnitario.toDoubleOrNull() ?: 0.0

        // Perform numerical multiplication
        return totalMedidasNum * valorUnitarioNum
    }

    /**
     * Valida todos los ítems del formulario y marca los que tienen errores
     * Actualiza la propiedad tieneError de cada ítem para mostrar feedback visual
     */
    fun validarFormulario() {
        for (i in _formItems.indices) {
            val item = _formItems[i]
            _formItems[i] = item.copy(tieneError = !validarItem(item))
        }
    }

    /**
     * Verifica si un ítem individual cumple con todas las validaciones requeridas
     *
     * @param item Ítem a validar
     * @return true si el ítem es válido, false si tiene errores
     */
    fun validarItem(item: FormItem): Boolean {
        val itemValido = item.item.isNotBlank()
        val descripcionValida = item.descripcion.isNotBlank()
        val unidadValida = item.unidad.isNotBlank()
        val valorValido = item.valorUnitario.toDoubleOrNull() != null
        val m1 = item.medida1.toDoubleOrNull()
        val m2 = item.medida2.toDoubleOrNull()
        val m3 = item.medida3.toDoubleOrNull()
        val medidasValidas = m1 != null || m2 != null || m3 != null

        return itemValido && descripcionValida && unidadValida && valorValido && medidasValidas
    }
}