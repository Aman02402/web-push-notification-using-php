<?php


require_once 'database.php';


// Pagination variables
$items_per_page = 10;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$start = ($page - 1) * $items_per_page;

// Fetch notifications from database
$sql = "SELECT * FROM notifications ORDER BY id DESC LIMIT $start, $items_per_page";
$result = $conn->query($sql);

// Fetch total number of notifications for pagination
$total_sql = "SELECT COUNT(*) as total FROM notifications";
$total_result = $conn->query($total_sql);
$total_row = $total_result->fetch_assoc();
$total_items = $total_row['total'];
$total_pages = ceil($total_items / $items_per_page);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notifications List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        #data-container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
        .notification-item {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            padding: 20px;
            overflow: hidden;
            cursor: pointer;
        }
        .notification-item h3 {
            margin-top: 0;
            font-size: 1.5em;
            color: #333;
        }
        .notification-item p {
            font-size: 1em;
            color: #666;
            line-height: 1.6;
        }
        .notification-item small {
            display: block;
            margin-top: 10px;
            color: #999;
            font-size: 0.9em;
        }
        .pagination-controls {
            text-align: center;
            margin: 20px;
        }
        .pagination-controls button, .pagination-controls a {
            padding: 10px 15px;
            margin: 0 5px;
            font-size: 1em;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-decoration: none;
            display: inline-block;
        }
        .pagination-controls button:hover, .pagination-controls a:hover {
            background-color: #0056b3;
        }
        .pagination-controls button:disabled, .pagination-controls a.disabled {
            background-color: #ddd;
            color: #aaa;
            cursor: not-allowed;
        }
    </style>
</head>
<body>

    <div id="data-container">
        <?php if ($result->num_rows > 0): ?>
            <?php while($row = $result->fetch_assoc()): ?>
                <div class="notification-item" onclick="window.location.href='detail.php?id=<?php echo $row['id']; ?>'">
                    <h3><?php echo htmlspecialchars($row['title']); ?></h3>
                    <p><?php echo htmlspecialchars($row['body']); ?></p>
                    <small><?php echo htmlspecialchars($row['created_at']); ?></small>
                </div>
            <?php endwhile; ?>
        <?php else: ?>
            <p>No notifications found.</p>
        <?php endif; ?>
    </div>

    <div class="pagination-controls">
        <?php if ($page > 1): ?>
            <a href="?page=<?php echo $page - 1; ?>">Previous</a>
        <?php else: ?>
            <span class="disabled">Previous</span>
        <?php endif; ?>

        <?php for ($i = 1; $i <= $total_pages; $i++): ?>
            <a href="?page=<?php echo $i; ?>" <?php if ($i == $page) echo 'class="disabled"'; ?>>
                <?php echo $i; ?>
            </a>
        <?php endfor; ?>

        <?php if ($page < $total_pages): ?>
            <a href="?page=<?php echo $page + 1; ?>">Next</a>
        <?php else: ?>
            <span class="disabled">Next</span>
        <?php endif; ?>
    </div>

</body>
</html>

<?php $conn->close(); ?>
