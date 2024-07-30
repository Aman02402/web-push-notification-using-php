<?php
header("Access-Control-Allow-Origin: https://rajputfarms.in/"); // Replace with your domain
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

 

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



// // Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


// Get the POST data
$data = json_decode(file_get_contents('php://input'), true);

// Check if the token is provided
if (isset($data['token'])) {
    $token = $conn->real_escape_string($data['token']);

    // Update the device_id field with the FCM token
    $sql = "insert into users (device_id) value('$token')"; // Replace user_id with the actual user ID

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["success" => true]);
    } else {
        echo json_encode(["success" => false, "error" => $conn->error]);
    }
} else {
    echo json_encode(["success" => false, "error" => "Token not provided"]);
}

// Close the connection
$conn->close();
?>
