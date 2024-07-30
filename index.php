<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Notification Panel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            color: #333;
            font-weight: bold;
        }
        input, select, textarea {
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 150px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            margin: 10px 5px 0 0;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .buttons {
            display: flex;
            justify-content: flex-start;
        }
        .image-preview {
            max-width: 100%;
            max-height: 200px;
            margin-top: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .filters {
            transition: all 0.3s ease;
        }
        .filters.hidden {
            display: none;
        }
        .checkbox-label {
            display: flex;
            align-items: center;
            font-weight: normal;
            margin-bottom: 15px;
        }
        .checkbox-label input[type="checkbox"] {
            margin-right: 10px;
        }
    </style>
    <script>
        function updateImagePreview() {
            var imageUrl = document.getElementById('image').value;
            var imagePreview = document.getElementById('image-preview');
            if (imageUrl) {
                imagePreview.src = imageUrl;
                imagePreview.style.display = 'block';
            } else {
                imagePreview.style.display = 'none';
            }
        }

        function toggleFilters() {
            var sendGlobal = document.getElementById('send_global').checked;
            var filters = document.getElementById('filters');
            if (sendGlobal) {
                filters.classList.add('hidden');
            } else {
                filters.classList.remove('hidden');
            }
        }
    </script>
</head>
<body>
      <div class="container">
        <h1>Send Notification</h1>
        <form action="send_notification.php" method="post">
            <label for="indicator_name">Indicator name</label>
            <input type="text" id="indicator_name" name="indicator_name" required>
            
            <label for="currency_name">Currency Name</label>
            <textarea id="currency_name" name="currency_name" rows="4" required></textarea>
            
            
            
            
            <label for="signal_type">Signal Type</label>
            <textarea id="signal_type" name="signal_type" rows="4" required></textarea>
            
            <label for="body">Body</label>
            <textarea id="body" name="body" rows="4" required></textarea>
            
            

            <label for="image">Image URL:</label>
            <input type="text" id="image" name="image" oninput="updateImagePreview()">
            <img id="image-preview" class="image-preview" style="display:none;" />

            <label class="checkbox-label">
                <input type="checkbox" id="send_global" name="send_global" onclick="toggleFilters()">
                Check to send notification to all users
            </label>

            <div id="filters" class="filters">
                <label for="country">Country:</label>
                <input type="text" id="country" name="country">
                
               
            </div>
            
            <label for="scheduled_time">Scheduled Time:</label>
            <input type="datetime-local" id="scheduled_time" name="scheduled_time">
            
            <div class="buttons">
                <input type="submit" name="action" value="InstantSend">
                <input type="submit" name="action" value="Schedule">
            </div>
        </form>
    </div>
</body>
</html>
