<?php
require_once 'db_connect.php';

// Menangkap data dari PostText App Inventor
$username = isset($_POST['username']) ? $conn->real_escape_string($_POST['username']) : 'Guest';
$category = isset($_POST['category']) ? $conn->real_escape_string($_POST['category']) : 'General';
$score = isset($_POST['score']) ? intval($_POST['score']) : 0;
$total = isset($_POST['total']) ? intval($_POST['total']) : 0;

$sql = "INSERT INTO table_scores (username, category, score, total_questions) 
        VALUES ('$username', '$category', $score, $total)";

if ($conn->query($sql) === TRUE) {
    echo json_encode(["status" => "success", "message" => "Score saved successfully!"]);
} else {
    echo json_encode(["status" => "error", "message" => "Error saving score: " . $conn->error]);
}

$conn->close();
?>