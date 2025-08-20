plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.android)
    id("org.jetbrains.kotlin.plugin.compose") version "2.0.21"

}

android {
    namespace = "com.sanar.controlcampo"
    compileSdk = 35
// Namespace único para la app (similar al paquete base)
    namespace = "com.example.controlcampo"
    // Versión del SDK para compilar la app
    compileSdk = 36
    defaultConfig {
        applicationId = "com.sanar.controlcampo"
// ID único de la aplicación para Play Store
        applicationId = "com.example.controlcampo"
        minSdk = 33
        targetSdk = 35
        versionCode = 1
        versionName = "1.0"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }

    // Configuración para firmar la app y prepararla para Play Store
    signingConfigs {
        // Nombre personalizado para la configuración de firma (puede cambiarse)
        create("release") {
            // Archivo keystore que contiene la clave privada (debes crearlo tú)
            storeFile = file("mi_clave.jks")
            // Contraseña del archivo keystore
            storePassword = "clave_del_keystore"
            // Alias de la clave dentro del archivo keystore
            keyAlias = "mi_alias"
            // Contraseña de la clave específica
            keyPassword = "clave_de_la_llave"
        }
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
            // Aplicar configuración de firma al build de tipo release
            signingConfig = signingConfigs.getByName("release")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }
    // Configuración del compilador Kotlin
    kotlinOptions {
        jvmTarget = "11"
    }
    buildFeatures {
        compose = true
    }

    composeOptions {
        kotlinCompilerExtensionVersion = "1.5.14"
    }

    kotlinOptions {
        jvmTarget = "11"
    }
}

dependencies {
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.appcompat)
    implementation(libs.androidx.material)
    implementation(libs.androidx.constraintlayout)
    implementation(libs.androidx.lifecycle.viewmodel.android)

    testImplementation(libs.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    // Jetpack Compose Core
    implementation("androidx.activity:activity-compose:1.8.2")
    implementation("androidx.compose.ui:ui:1.5.0")
    implementation("androidx.compose.ui:ui-tooling-preview:1.5.0")
    implementation("androidx.compose.material3:material3:1.1.2")

// ViewModel + State
    implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.6.1")
    implementation("androidx.lifecycle:lifecycle-runtime-compose:2.6.1")

// Navigation Compose
    implementation("androidx.navigation:navigation-compose:2.7.3")
    implementation("androidx.navigation:navigation-compose:2.7.7")
    implementation("androidx.navigation:navigation-compose:2.8.0")

// Optional: Para debugging de interfaces
    debugImplementation("androidx.compose.ui:ui-tooling:1.5.0")
    implementation("androidx.compose.ui:ui:1.7.0")

    // Navegación entre pantallas con Jetpack Compose
    implementation("androidx.navigation:navigation-compose:2.7.3")
    // Integración de Compose con actividades
    implementation("androidx.activity:activity-compose:1.8.0")
    // Material Design 3 para Jetpack Compose
    implementation("androidx.compose.material3:material3:1.1.2")
    implementation("androidx.compose.material3:material3:1.2.0")
    implementation("androidx.compose.material:material-icons-extended:1.7.0")
    // Extensiones de ciclo de vida de Android
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.6.2")
    // Librerías de Apache POI para exportar archivos Excel (.xls y .xlsx)
    implementation("org.apache.poi:poi:5.2.3")
    implementation("org.apache.poi:poi-ooxml:5.2.3")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:1.9.0")

    // Dependencias adicionales proporcionadas por tu archivo libs.versions.toml
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.lifecycle.runtime.ktx)
    implementation(libs.androidx.activity.compose)
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.ui)
    implementation(libs.androidx.ui.graphics)
    implementation(libs.androidx.ui.tooling.preview)
    implementation(libs.androidx.material3)

    // Pruebas unitarias y pruebas instrumentadas
    testImplementation(libs.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation(libs.androidx.ui.test.junit4)
    debugImplementation(libs.androidx.ui.tooling)
    debugImplementation(libs.androidx.ui.test.manifest)
}

