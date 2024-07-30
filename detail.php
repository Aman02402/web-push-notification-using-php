<?php


require_once 'database.php';


// Fetch notification details based on ID
$notification_id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
$sql = "SELECT * FROM notifications WHERE id = $notification_id";
$result = $conn->query($sql);

if ($result->num_rows == 0) {
    echo "Notification not found.";
    exit;
}

$notification = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notification Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .notification-detail {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .notification-detail h1 {
            margin-top: 0;
            font-size: 2em;
            color: #333;
        }
        .notification-detail p {
            font-size: 1.2em;
            color: #666;
            line-height: 1.6;
        }
        .notification-detail small {
            display: block;
            margin-top: 10px;
            color: #999;
            font-size: 1em;
        }
    </style>
</head>
<body>

    <div class="notification-detail">
        <h1><?php echo htmlspecialchars($notification['title']); ?></h1>
        <p><?php echo htmlspecialchars($notification['body']); ?></p>
        <small>Created at: <?php echo htmlspecialchars($notification['created_at']); ?></small>
    </div>

</body>
</html>

<?php $conn->close(); ?>
