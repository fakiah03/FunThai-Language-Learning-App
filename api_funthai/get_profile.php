<?php
// 1. WAJIB LETAK HEADER INI SUPAYA APP INVENTOR TAHU INI ADALAH JSON!
header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');

require_once 'db_connect.php';

$username = isset($_GET['username']) ? $conn->real_escape_string($_GET['username']) : 'Guest Student';

// Nilai asal (Default 0 jika jadual tak jumpa)
$vocab_learned = 0;
$total_quizzes = 0;
$high_score = 0;

// 2. Kira vocab (Diletakkan penapis @ supaya tak crash jika jadual table_vocab tiada)
$sql_vocab = "SELECT COUNT(*) AS total_vocab FROM table_vocab";
$res_vocab = @$conn->query($sql_vocab);
if ($res_vocab && $res_vocab->num_rows > 0) {
    $row_vocab = $res_vocab->fetch_assoc();
    $vocab_learned = (int)$row_vocab['total_vocab'];
}

// 3. Kira total quizzes & high score (Penapis @ untuk elak crash)
$sql_played = "SELECT COUNT(*) AS total_played, MAX(score) AS high_score 
               FROM table_scores WHERE username = '$username'";
$res_played = @$conn->query($sql_played);
if ($res_played && $res_played->num_rows > 0) {
    $row_played = $res_played->fetch_assoc();
    $total_quizzes = $row_played['total_played'] ? (int)$row_played['total_played'] : 0;
    $high_score = $row_played['high_score'] ? (int)$row_played['high_score'] : 0;
}

// 4. Balas JSON yang 100% bersih ke App Inventor
$response = array(
    "status" => "success",
    "username" => $username,
    "vocab_learned" => $vocab_learned,
    "total_quizzes" => $total_quizzes,
    "total_played" => $total_quizzes,
    "high_score" => $high_score
);

echo json_encode($response, JSON_UNESCAPED_UNICODE);
$conn->close();
?>