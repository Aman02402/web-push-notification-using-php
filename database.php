<?php
// database.php



// MySQL database connection
$host = 'localhost';
$db = 'u291199864_noti';
$user = 'u291199864_noti';
$pass = 'Noti123@123';

// Create connection
$conn = new mysqli($host, $user, $pass, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

 
?>
