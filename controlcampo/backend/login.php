<?php
header("Content-Type: application/json");

$usuario = $_POST['usuario'] ?? '';
$password = $_POST['password'] ?? '';

$servername = "localhost";
$db_username = "root";
$db_password = "";
$dbname = "bd_sanear";

$conn = new mysqli($servername, $db_username, $db_password, $dbname);

if ($conn->connect_error) {
    echo json_encode([
        "success" => false,
        "message" => "Error de conexión: " . $conn->connect_error
    ]);
    exit();
}

$stmt = $conn->prepare("SELECT * FROM usuarios WHERE usuario = ? AND clave = ?");
$stmt->bind_param("ss", $usuario, $password);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    echo json_encode([
        "success" => true,
        "message" => "Login correcto",
        "usuario" => $usuario
    ]);
} else {
    echo json_encode([
        "success" => false,
        "message" => "Credenciales incorrectas"
    ]);
}

$stmt->close();
$conn->close();
?>