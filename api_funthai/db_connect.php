<?php

header('Access-Control-Allow-Origin: *');

$host = "localhost";
$user = "root";       // User default Laragon/XAMPP
$pass = "";           // Password default Laragon biasanya kosong ""
$dbname = "funthai_db";
$port = 3307;          // Port default MySQL ialah 3306


$conn = new mysqli($host, $user, $pass, $dbname, $port);


if ($conn->connect_error) {
    die(json_encode(["status" => "error", "message" => "Database connection failed: " . $conn->connect_error]));
}

// WAJIB: Setkan charset kepada utf8mb4 supaya tulisan Thai tak jadi tanda soal (?)
$conn->set_charset("utf8mb4");
?>