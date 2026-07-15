<?php
require_once 'db_connect.php';

$lesson = isset($_GET['lesson']) ? intval($_GET['lesson']) : 1;

$sql = "SELECT id, word_thai, pronunciation, meaning_eng, audio_name, category 
        FROM table_vocab WHERE lesson_no = $lesson";
$result = $conn->query($sql);

$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

// Hantar senarai JSON ke App Inventor
echo json_encode($data, JSON_UNESCAPED_UNICODE);
$conn->close();
?>