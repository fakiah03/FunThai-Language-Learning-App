<?php
require_once 'db_connect.php';

$category = isset($_GET['category']) ? $conn->real_escape_string($_GET['category']) : 'Fruit';

$sql = "SELECT id, word_thai, pronunciation, meaning_eng, image_name,  audio_name 
        FROM table_vocab WHERE category = '$category'";
$result = $conn->query($sql);

$data = array();
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode($data, JSON_UNESCAPED_UNICODE);
$conn->close();
?>