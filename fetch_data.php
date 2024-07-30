<?php
require_once 'database.php';

// Check connection
if ($conn->connect_error) {
    die(json_encode(['error' => $conn->connect_error]));
}

// Define default values

if (isset($_GET['id'])) {
    // Fetch details for a single item
    $id = intval($_GET['id']);
    $sql = "SELECT * FROM notifications WHERE id = $id";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo json_encode($row);
    } else {
        echo json_encode(["error" => "No item found"]);
    }
} else if (isset($_GET['page']) && isset($_GET['limit'])) {
    // Fetch list of items for pagination
    $page = intval($_GET['page']);
    $limit = intval($_GET['limit']);
    $offset = ($page - 1) * $limit;

    $sql = "SELECT * FROM notifications LIMIT $offset, $limit";
    $result = $conn->query($sql);

    $items = [];
    while ($row = $result->fetch_assoc()) {
        $items[] = $row;
    }
    echo json_encode($items);
}

$conn->close();
?>