package com.sanar.controlcampo.ui

// Compose y UI
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.lifecycle.viewmodel.compose.viewModel



// Proyecto
import com.sanar.controlcampo.model.FormItem
import kotlin.math.roundToInt

/**
 * Componente que representa una fila individual del formulario
 * Contiene todos los campos necesarios para un ítem: código, descripción, unidad, medidas y valor
 *
 * @param index Posición del ítem en la lista (para identificarlo)
 * @param formItem Datos del ítem a mostrar y editar
 * @param viewModel ViewModel que maneja la lógica de negocio
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun FormularioFila(index: Int, formItem: FormItem, viewModel: FormViewModel) {
    // Estados para controlar la expansión de los menús desplegables
    var itemMenuExpanded by remember { mutableStateOf(false) }
    var unidadMenuExpanded by remember { mutableStateOf(false) }

    Column(modifier = Modifier.fillMaxWidth()) {

        /**
         * Desplegable para seleccionar el ítem.
         * Al seleccionar un ítem, se autocompleta la descripción correspondiente.
         * Usa ExposedDropdownMenuBox de Material3.
         */
        ExposedDropdownMenuBox(
            expanded = itemMenuExpanded,
            onExpandedChange = { itemMenuExpanded = !itemMenuExpanded }
        ) {
            OutlinedTextField(
                value = formItem.item,
                onValueChange = { }, // Solo lectura, se selecciona desde el menú
                readOnly = true,
                label = { Text("Ítem") },
                isError = formItem.tieneError,
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = itemMenuExpanded) },
                modifier = Modifier
                    .fillMaxWidth()
                    .menuAnchor() // Habilita el menú desplegable
            )

            ExposedDropdownMenu(
                expanded = itemMenuExpanded,
                onDismissRequest = { itemMenuExpanded = false }
            ) {
                viewModel.availableItems.forEach { item ->
                    DropdownMenuItem(
                        text = { Text(item) },
                        onClick = {
                            // Actualiza el ítem y automáticamente llena la descripción
                            viewModel.updateItemWithDescription(index, item)
                            itemMenuExpanded = false
                        }
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(8.dp))

        // Campo para la descripción detallada del trabajo (se llena automáticamente)
        OutlinedTextField(
            value = formItem.descripcion,
            onValueChange = { viewModel.updateItem(index, formItem.copy(descripcion = it)) },
            label = { Text("Descripción") },
            isError = formItem.tieneError,
            modifier = Modifier.fillMaxWidth(),
            readOnly = true // Solo lectura ya que se llena automáticamente
        )

        Spacer(modifier = Modifier.height(8.dp))

        /**
         * Desplegable para seleccionar la unidad de medida.
         * Permite elegir entre las unidades disponibles.
         * Usa ExposedDropdownMenuBox de Material3.
         */
        ExposedDropdownMenuBox(
            expanded = unidadMenuExpanded,
            onExpandedChange = { unidadMenuExpanded = !unidadMenuExpanded }
        ) {
            OutlinedTextField(
                value = formItem.unidad,
                onValueChange = { }, // Solo lectura, se selecciona desde el menú
                readOnly = true,
                label = { Text("Unidad") },
                isError = formItem.tieneError,
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = unidadMenuExpanded) },
                modifier = Modifier
                    .fillMaxWidth()
                    .menuAnchor() // Habilita el menú desplegable
            )

            ExposedDropdownMenu(
                expanded = unidadMenuExpanded,
                onDismissRequest = { unidadMenuExpanded = false }
            ) {
                viewModel.availableUnits.forEach { unidad ->
                    DropdownMenuItem(
                        text = { Text(unidad) },
                        onClick = {
                            viewModel.updateItem(index, formItem.copy(unidad = unidad))
                            unidadMenuExpanded = false
                        }
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(8.dp))

        // Fila horizontal para las tres medidas
        Row(modifier = Modifier.fillMaxWidth()) {
            // Primera medida (ej: ancho, largo)
            OutlinedTextField(
                value = formItem.medida1,
                onValueChange = { viewModel.updateItem(index, formItem.copy(medida1 = it)) },
                label = { Text("Medida 1") },
                keyboardOptions = KeyboardOptions.Default.copy(keyboardType = KeyboardType.Number),
                isError = formItem.tieneError,
                modifier = Modifier.weight(1f)  // Ocupa 1/3 del ancho disponible
            )

            Spacer(modifier = Modifier.width(8.dp))

            // Segunda medida (ej: altura, profundidad)
            OutlinedTextField(
                value = formItem.medida2,
                onValueChange = { viewModel.updateItem(index, formItem.copy(medida2 = it)) },
                label = { Text("Medida 2") },
                keyboardOptions = KeyboardOptions.Default.copy(keyboardType = KeyboardType.Number),
                isError = formItem.tieneError,
                modifier = Modifier.weight(1f)  // Ocupa 1/3 del ancho disponible
            )

            Spacer(modifier = Modifier.width(8.dp))

            // Tercera medida (ej: espesor, radio)
            OutlinedTextField(
                value = formItem.medida3,
                onValueChange = { viewModel.updateItem(index, formItem.copy(medida3 = it)) },
                label = { Text("Medida 3") },
                keyboardOptions = KeyboardOptions.Default.copy(keyboardType = KeyboardType.Number),
                isError = formItem.tieneError,
                modifier = Modifier.weight(1f)  // Ocupa 1/3 del ancho disponible
            )
        }

        Spacer(modifier = Modifier.height(8.dp))

        // Campo para el valor unitario (precio por unidad)
        OutlinedTextField(
            value = formItem.valorUnitario,
            onValueChange = { viewModel.updateItem(index, formItem.copy(valorUnitario = it)) },
            label = { Text("Valor Unitario") },
            keyboardOptions = KeyboardOptions.Default.copy(keyboardType = KeyboardType.Number),
            isError = formItem.tieneError,
            modifier = Modifier.fillMaxWidth()
        )

        Spacer(modifier = Modifier.height(8.dp))

        // Cálculos automáticos que se muestran al usuario
        val medida1Float = formItem.medida1.toFloatOrNull() ?: 0f
        val medida2Float = formItem.medida2.toFloatOrNull() ?: 0f
        val medida3Float = formItem.medida3.toFloatOrNull() ?: 0f
        val valorUnitarioFloat = formItem.valorUnitario.toFloatOrNull() ?: 0f

        // Suma total de las tres medidas
        val totalMedidas = medida1Float + medida2Float + medida3Float
        // Subtotal calculado: total de medidas * valor unitario
        val subtotal = totalMedidas * valorUnitarioFloat

        // Muestra los resultados de los cálculos
        Text("Total Medidas: ${totalMedidas.roundToInt()}")
        Text("Subtotal: ${subtotal.roundToInt()}")
    }
}

/**
 * Pantalla principal del formulario de ítems
 * Permite al usuario agregar múltiples ítems, editarlos y navegar de vuelta
 *
 * @param navController Controlador de navegación para regresar a la pantalla anterior
 * @param formViewModel ViewModel que maneja los datos del formulario
 */
@Composable
fun FormPage2(navController: NavController) {
    val viewModel: FormViewModel = viewModel()
    val items = viewModel.formItems
    // ... tu contenido Compose ...

    /**
     * Estados para mostrar mensajes y diálogos de error, éxito y confirmación
     */
    var showError by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf("") }
    var showSuccess by remember { mutableStateOf(false) }
    var showConfirmDialog by remember { mutableStateOf(false) }
    var showSaveSuccess by remember { mutableStateOf(false) }

    Column(modifier = Modifier.padding(16.dp)) {
        // Título de la pantalla
        Text("Formulario de Ítems", style = MaterialTheme.typography.titleLarge)
        Spacer(modifier = Modifier.height(16.dp))

        // Lista dinámica de filas del formulario
        // Se actualiza automáticamente cuando se agregan o eliminan ítems
        viewModel.formItems.forEachIndexed { index, item ->
            FormularioFila(index = index, formItem = item, viewModel = viewModel)
            Spacer(modifier = Modifier.height(16.dp))
        }

        // Botón para agregar una nueva fila al formulario
        Button(onClick = { viewModel.addItem() }) {
            Text("Agregar fila")
        }

        Spacer(modifier = Modifier.height(16.dp))

        /**
         * Botón para enviar el formulario.
         * Valida que todos los campos estén completos en todas las filas.
         * Si hay campos vacíos, muestra un mensaje de error.
         * Si todo está correcto, muestra un diálogo de confirmación y luego un mensaje de éxito.
         */
        Button(onClick = {
            // Validar todos los campos antes de enviar
            val hayCamposVacios = viewModel.formItems.any { item ->
                item.item.isBlank() || item.descripcion.isBlank() || item.unidad.isBlank() ||
                        item.medida1.isBlank() || item.medida2.isBlank() || item.medida3.isBlank() || item.valorUnitario.isBlank()
            }
            if (hayCamposVacios) {
                errorMessage = "Por favor, complete todos los campos en todas las filas."
                showError = true
            } else {
                showConfirmDialog = true
            }
        }) {
            Text("Enviar")
        }

        Spacer(modifier = Modifier.height(16.dp))

        /**
         * Botón para guardar el formulario localmente.
         * Valida que haya al menos una fila con algún campo lleno.
         * Si no hay datos, muestra un mensaje de error.
         * Si hay datos, muestra un mensaje de guardado exitoso.
         */
        Button(onClick = {
            // Validar que haya al menos una fila con algún campo lleno
            val hayDatos = viewModel.formItems.any { item ->
                item.item.isNotBlank() || item.descripcion.isNotBlank() || item.unidad.isNotBlank() ||
                        item.medida1.isNotBlank() || item.medida2.isNotBlank() || item.medida3.isNotBlank() || item.valorUnitario.isNotBlank()
            }
            if (hayDatos) {
                showSaveSuccess = true
            } else {
                errorMessage = "No hay datos para guardar."
                showError = true
            }
        }) {
            Text("Guardar")
        }

        Spacer(modifier = Modifier.height(16.dp))

        // Botón para regresar a la pantalla anterior
        Button(onClick = { navController.popBackStack() }) {
            Text("Atrás")
        }
    }

    /**
     * Diálogo de error si hay campos vacíos o no hay datos para guardar.
     * Muestra un mensaje indicando que se deben completar todos los campos o que no hay datos.
     */
    if (showError) {
        AlertDialog(
            onDismissRequest = { showError = false },
            title = { Text("Error") },
            text = { Text(errorMessage) },
            confirmButton = {
                Button(onClick = { showError = false }) { Text("OK") }
            }
        )
    }

    /**
     * Diálogo de confirmación antes de enviar el formulario.
     * Permite al usuario confirmar o cancelar el envío.
     */
    if (showConfirmDialog) {
        AlertDialog(
            onDismissRequest = { showConfirmDialog = false },
            title = { Text("Confirmar envío") },
            text = { Text("¿Está seguro de que desea enviar el formulario?") },
            confirmButton = {
                Button(onClick = {
                    showConfirmDialog = false
                    // Simular envío exitoso
                    showSuccess = true
                }) { Text("Enviar") }
            },
            dismissButton = {
                Button(onClick = { showConfirmDialog = false }) { Text("Cancelar") }
            }
        )
    }

    /**
     * Diálogo de éxito tras el envío.
     * Informa al usuario que el formulario se envió correctamente.
     */
    if (showSuccess) {
        AlertDialog(
            onDismissRequest = { showSuccess = false },
            title = { Text("¡Envío exitoso!") },
            text = { Text("El formulario se envió correctamente.") },
            confirmButton = {
                Button(onClick = { showSuccess = false }) { Text("OK") }
            }
        )
    }

    /**
     * Diálogo de éxito tras guardar.
     * Informa al usuario que el formulario se guardó correctamente.
     */
    if (showSaveSuccess) {
        AlertDialog(
            onDismissRequest = { showSaveSuccess = false },
            title = { Text("Guardado exitoso") },
            text = { Text("El formulario se guardó correctamente.") },
            confirmButton = {
                Button(onClick = { showSaveSuccess = false }) { Text("OK") }
            }
        )
    }
}