// Este archivo contiene la lógica principal de la aplicación,
// incluyendo la interfaz, la navegación entre pantallas
// y configuración necesaria para publicación en Google Play.

package com.example.controlcampo

import android.os.Bundle
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.wrapContentWidth
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zIndex
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.sanar.controlcampo.ui.ControlCampoTheme
import kotlinx.coroutines.launch

// -------------------- NAVEGACIÓN ENTRE PANTALLAS ---------------------


sealed class Pantallas(val ruta: String) {
    object Principal : Pantallas("pantalla_principal")
    object PantallaAnterior : Pantallas("pantalla_anterior")
    object PantallaSiguiente : Pantallas("pantalla_siguiente")
}

// -------------------- ACTIVIDAD PRINCIPAL ----------------------------

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            ControlCampoTheme {
                val navController = rememberNavController()

                NavHost(
                    navController = navController,
                    startDestination = Pantallas.Principal.ruta
                ) {
                    // Pantalla principal
                    composable(Pantallas.Principal.ruta) {
                        PantallaConFondoYListas(
                            onGuardar = { trabajo, motivo, causa ->
                                // Aquí simplemente mostramos mensaje de guardado
                                Toast.makeText(
                                    this@MainActivity,
                                    "Datos guardados correctamente:\n$trabajo - $motivo - $causa",
                                    Toast.LENGTH_LONG
                                ).show()
                            },
                            onAnterior = { navController.navigate(Pantallas.PantallaAnterior.ruta) },
                            onSiguiente = { navController.navigate(Pantallas.PantallaSiguiente.ruta) }
                        )
                    }
                    // Pantalla anterior
                    composable(Pantallas.PantallaAnterior.ruta) {
                        PantallaAnterior { navController.popBackStack() }
                    }
                    // Pantalla siguiente
                    composable(Pantallas.PantallaSiguiente.ruta) {
                        PantallaSiguiente { navController.popBackStack() }
                    }
                }
            }
        }
    }

    // -------------------- PANTALLA PRINCIPAL ------------------------------

    @Composable
    fun PantallaConFondoYListas(
        onGuardar: (String, String, String) -> Unit,
        onAnterior: () -> Unit,
        onSiguiente: () -> Unit
    ) {
        // Lista de trabajos y motivos asociados
        val trabajosConMotivos = mapOf(
            "Cambio de acometida" to listOf("Cambiar acometida", "Trasladar acometida", "Cambiar acometida (motivos técnicos)"),
            "Reparación de Acometida" to listOf("Caja de Registro sin tapa o tapa averiada", "Fuga en acometida de alcantarillado",
                "Reparación Caja de registro", "Hundimiento en Acometida", "Hundimiento en Acometida no imputable al cliente"),
            "Reparación de aliviadero" to listOf("Reparar aliviadero"),
            "Reparación de cámara" to listOf("Cámara de inspección defectuosa", "Cámara de inspección no visible",
                "Caja de inspección alcantarillado sin tapa", "Caja de inspección alcantarillado con tapa averiada"),
            "Construcción cámara" to listOf("Construir cámara"),
            "Reparación de sumidero" to listOf("Sumidero defectuoso"),
            "Colocación de reja de sumidero" to listOf("Sumidero con reja defectuosa", "Sumidero sin reja"),
            "Reparación en red" to listOf("Daño alcantarillado", "Daño alcantarillado urgente", "Daño reportado por investigación con TV",
                "Fuga alcantarillado", "Hundimiento"),
            "Control socioambiental y de tránsito" to listOf("Fichas para PMT", "Monitoreo de ruido", "Planes de manejo de tránsito",
                "Implementación de programas ambientales"),
            "Referenciación de elemento o red" to listOf("Referenciar elemento o red"),
            "Pavimento" to listOf("Acometida", "Daño alcantarillado", "Cámara de inspección", "Construir cámara",
                "Daño reportado por investigación con TV", "Hundimiento", "Hundimiento en Acometida", "Sumidero")
        )

        // Lista de causas de evento
        val causasEvento = listOf(
            "Acometida en mal estado",
            "Caja de registro en mal estado",
            "Conexión errada",
            "Incumplimiento especificación técnica"
        )

        // Estados seleccionados
        val trabajos = trabajosConMotivos.keys.toList()
        var trabajoSeleccionado by remember { mutableStateOf(trabajos.first()) }
        var motivoSeleccionado by remember { mutableStateOf(trabajosConMotivos[trabajoSeleccionado]!!.first()) }
        var causaEventoSeleccionada by remember { mutableStateOf(causasEvento.first()) }

        val snackbarHostState = remember { SnackbarHostState() }
        val scope = rememberCoroutineScope()

        Box(Modifier.fillMaxSize()) {
            // Fondo
            Image(
                painter = painterResource(id = R.drawable.sanear),
                contentDescription = null,
                contentScale = ContentScale.Crop,
                modifier = Modifier.fillMaxSize().zIndex(0f)
            )

            // Contenido principal
            Column(
                Modifier
                    .fillMaxWidth()
                    .padding(top = 100.dp, start = 16.dp, end = 16.dp, bottom = 80.dp)
                    .zIndex(2f),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Text(
                    "INFORMACIÓN TÉCNICA DE LA SOLICITUD",
                    color = Color.White,
                    fontSize = 19.sp,
                    fontWeight = FontWeight.SemiBold,
                    modifier = Modifier.fillMaxWidth().wrapContentWidth(Alignment.CenterHorizontally)
                )

                Spacer(Modifier.height(100.dp))
                // Selección de Trabajo
                DropdownMenuEjemplo("Trabajo", trabajos, trabajoSeleccionado, Color.White) {
                    trabajoSeleccionado = it
                    motivoSeleccionado = trabajosConMotivos[it]!!.first()
                }
                Spacer(Modifier.height(20.dp))
                // Selección de Motivo
                DropdownMenuEjemplo("Motivo", trabajosConMotivos[trabajoSeleccionado]!!, motivoSeleccionado, Color.White) {
                    motivoSeleccionado = it
                }
                Spacer(Modifier.height(20.dp))
                // Selección de Causa Evento
                DropdownMenuEjemplo("Causa Evento", causasEvento, causaEventoSeleccionada, Color.White) {
                    causaEventoSeleccionada = it
                }
                Spacer(Modifier.height(50.dp))
                // Botón Guardar
                Button(
                    onClick = {
                        scope.launch {
                            snackbarHostState.showSnackbar("Datos guardados correctamente")
                            onGuardar(trabajoSeleccionado, motivoSeleccionado, causaEventoSeleccionada)
                        }
                    },
                    modifier = Modifier
                        .align(Alignment.CenterHorizontally)
                        .shadow(8.dp, shape = RoundedCornerShape(12.dp)),
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF1976D2))
                ) {
                    Text("Guardar", color = Color.White)
                }
                Spacer(Modifier.height(8.dp))
                SnackbarHost(hostState = snackbarHostState, modifier = Modifier.align(Alignment.CenterHorizontally))
            }

            // Botones de navegación
            Row(
                modifier = Modifier
                    .align(Alignment.BottomCenter)
                    .fillMaxWidth()
                    .padding(16.dp),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                // Botón anterior
                Button(
                    onClick = { onAnterior() },
                    colors = ButtonDefaults.buttonColors(containerColor = Color.Transparent),
                    contentPadding = PaddingValues(0.dp),
                    shape = RoundedCornerShape(10.dp)
                ) {
                    Image(
                        painter = painterResource(id = R.drawable.flecha),
                        contentDescription = "Anterior",
                        modifier = Modifier
                            .size(50.dp)
                            .graphicsLayer(rotationY = 180f)
                    )
                }
                // Botón siguiente
                Button(
                    onClick = { onSiguiente() },
                    colors = ButtonDefaults.buttonColors(containerColor = Color.Transparent),
                    contentPadding = PaddingValues(0.dp),
                    shape = RoundedCornerShape(10.dp)
                ) {
                    Image(
                        painter = painterResource(id = R.drawable.flecha),
                        contentDescription = "Siguiente",
                        modifier = Modifier.size(50.dp)
                    )
                }
            }
        }
    }

    // -------------------- MENÚ DESPLEGABLE ------------------------------

    @Composable
    fun DropdownMenuEjemplo(
        titulo: String,
        opciones: List<String>,
        seleccion: String,
        colorTexto: Color = Color.Black,
        onSeleccion: (String) -> Unit
    ) {
        var expanded by remember { mutableStateOf(false) }

        Column(
            Modifier
                .fillMaxWidth()
                .padding(vertical = 10.dp),
            horizontalAlignment = Alignment.Start
        ) {
            if (titulo.isNotEmpty()) Text(
                titulo,
                fontWeight = FontWeight.SemiBold,
                fontSize = 16.sp,
                color = colorTexto,
                modifier = Modifier.padding(start = 8.dp)
            )
            Box {
                OutlinedButton(
                    onClick = { expanded = true },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(48.dp)
                        .shadow(4.dp, shape = RoundedCornerShape(12.dp)),
                    colors = ButtonDefaults.outlinedButtonColors(
                        containerColor = Color.White,
                        contentColor = Color.Black
                    )
                ) {
                    Row(
                        Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(seleccion, fontSize = 16.sp)
                        Icon(imageVector = Icons.Default.ArrowDropDown, contentDescription = null)
                    }
                }
                DropdownMenu(
                    expanded = expanded,
                    onDismissRequest = { expanded = false },
                    modifier = Modifier.fillMaxWidth()
                ) {
                    opciones.forEach { opcion ->
                        DropdownMenuItem(
                            text = { Text(opcion, fontSize = 16.sp) },
                            onClick = {
                                onSeleccion(opcion)
                                expanded = false
                            }
                        )
                    }
                }
            }
        }
    }

    // -------------------- PANTALLAS TEMPORALES --------------------------

    @Composable
    fun PantallaAnterior(onVolver: () -> Unit) {
        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text("Pantalla anterior", fontSize = 20.sp)
                Button(onClick = onVolver) {
                    Text("Volver")
                }
            }
        }
    }

    @Composable
    fun PantallaSiguiente(onVolver: () -> Unit) {
        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text("Pantalla siguiente", fontSize = 20.sp)
                Button(onClick = onVolver) {
                    Text("Volver")
                }
            }
        }
    }

    // -------------------- PREVIEW ---------------------------------------

    @Preview(showBackground = true)
    @Composable
    fun PantallaConFondoYListasPreview() {
        ControlCampoTheme {
            PantallaConFondoYListas(
                onGuardar = { _, _, _ -> },
                onAnterior = {},
                onSiguiente = {}
            )
        }
    }
}

