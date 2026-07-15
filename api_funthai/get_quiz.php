<?php
require_once 'db_connect.php';

$category = isset($_GET['category']) ? $conn->real_escape_string($_GET['category']) : 'Fruit';

// Tarik soalan mengikut kategori dan susun secara rawak (RANDOM)
$sql = "SELECT  quiz_id, quiz_id,question_text, option_a, option_b, option_c, option_d, correct_option 
        FROM table_quiz WHERE category = '$category' ORDER BY RAND()";
$result = $conn->query($sql);

$data = array();
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

echo json_encode($data, JSON_UNESCAPED_UNICODE);
$conn->close();
?>