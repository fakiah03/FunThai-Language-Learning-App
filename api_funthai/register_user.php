<?php
require_once 'db_connect.php';

$username = isset($_POST['username']) ? $conn->real_escape_string($_POST['username']) : '';

if (empty($username)) {
    echo json_encode(["status" => "error", "message" => "Username is empty"]);
    exit;
}

$sql_check = "SELECT username FROM table_scores WHERE username = '$username' LIMIT 1";
$result_check = $conn->query($sql_check);

if ($result_check->num_rows > 0) {
   
    echo json_encode(["status" => "success", "message" => "User exists, welcome back!"]);
} else {
    
    echo json_encode(["status" => "success", "message" => "New user registered"]);
}

$conn->close();
?>