package com.sanar.controlcampo.model


/**
 * Modelo de datos que representa un ítem del formulario de solicitud
 * Contiene toda la información necesaria para un ítem de construcción
 * 
 * @property item Código o nombre del ítem (ej: "1.5", "2", "3")
 * @property descripcion Descripción detallada del trabajo a realizar
 * @property unidad Unidad de medida (ej: "m2", "kg", "M3")
 * @property medida1 Primera medida del ítem (ancho, largo, etc.)
 * @property medida2 Segunda medida del ítem (altura, profundidad, etc.)
 * @property medida3 Tercera medida del ítem (espesor, radio, etc.)
 * @property valorUnitario Precio por unidad de medida
 * @property tieneError Indica si el ítem tiene errores de validación para mostrar feedback visual
 */
data class FormItem(
    val item: String = "",             // Nombre del ítem
    val descripcion: String = "",      // Descripción del ítem
    val unidad: String = "",           // Unidad de medida (ej: m2, kg)
    val medida1: String = "",          // Primera medida
    val medida2: String = "",          // Segunda medida
    val medida3: String = "",          // Tercera medida
    val valorUnitario: String = "",    // Precio unitario
    val tieneError: Boolean = false    // 🚨 Indica si el ítem tiene error de validación
) {
    /**
     * Calcula la suma total de las tres medidas
     * Convierte las cadenas a números de forma segura, usando 0.0 si la conversión falla
     * 
     * @return Suma de las tres medidas como Double
     */
    val totalMedidas: Double
        get() = medida1.toDoubleOrNull().orZero() +
                medida2.toDoubleOrNull().orZero() +
                medida3.toDoubleOrNull().orZero()

    /**
     * Calcula el subtotal del ítem multiplicando el total de medidas por el valor unitario
     * 
     * @return Subtotal calculado como Double
     */
    val subtotal: Double
        get() = totalMedidas * valorUnitario.toDoubleOrNull().orZero()
}

/**
 * Función de extensión para convertir valores nulos a 0.0 de forma segura
 * Evita errores de NullPointerException al convertir strings a números
 * 
 * @return El valor Double original o 0.0 si es null
 */
fun Double?.orZero(): Double = this ?: 0.0


