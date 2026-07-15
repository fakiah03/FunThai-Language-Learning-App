<?php
require_once 'db_connect.php';

// Susun mengikut abjad Inggeris (ASC)
$sql = "SELECT id, word_thai, pronunciation, meaning_eng,image_name, audio_name 
        FROM table_vocab ORDER BY meaning_eng ASC";
$result = $conn->query($sql);

$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode($data, JSON_UNESCAPED_UNICODE);
$conn->close();
?>