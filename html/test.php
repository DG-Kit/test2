<?php
$host = 'localhost';
$user = 'admin';
$password = '12345';
$database = 'demo';
// Tạo kết nối
$conn = mysqli_connect($host, $user, $password, $database);

// Kiểm tra kết nối
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

?>