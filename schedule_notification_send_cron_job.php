<?php
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



require 'vendor/autoload.php';

use Google\Auth\Credentials\ServiceAccountCredentials;
use Google\Cloud\Firestore\FirestoreClient;

use Google\Auth\OAuth2;
use Google\Cloud\Core\ExponentialBackoff;

function getAccessToken($credentialsFilePath) {
      $client = new \Google_Client();
     $client->setAuthConfig($credentialsFilePath);
     $client->addScope('https://www.googleapis.com/auth/firebase.messaging');
     $client->refreshTokenWithAssertion();
     $token = $client->getAccessToken();
     return $token['access_token'];
}







// // Firebase service account key file path
$serviceAccountJsonPath = 'service-account-file.json';
$accessToken = getAccessToken($serviceAccountJsonPath);
 
 // // FCM endpoint URL
$url = 'https://fcm.googleapis.com/v1/projects/singleqlick/messages:send';

 
$timezone = 'Asia/Kolkata';

// Create a DateTime object with the Indian time zone
$currentDateTime = new DateTime(null, new DateTimeZone($timezone));

// Format the DateTime object to 'Y-m-d\TH:i'
$formattedDateTime = $currentDateTime->format('Y-m-d\TH:i');

 
$sql = "SELECT * FROM notifications WHERE sent = 0 and scheduled_time='$formattedDateTime' ";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        
        $country=$row["country"];
        $nid=$row["id"];
 
             $sql = "SELECT * FROM users WHERE country LIKE '%$country%'";
                    
                     $result = $conn->query($sql);
                       
                        if ($result->num_rows > 0) {
                            // Output data of each row
                     
                            while($row1 = $result->fetch_assoc()) {
                                echo $row['image']. '    ' .$row['image'];
                                
                                     
                                    sendFCMNotification($row1['device_id'], $row['title'], $row['body'], $row['image'], $accessToken, $url);
                                
                                $sql_update = "UPDATE notifications SET sent = 1 WHERE id =$nid ";
                                $resultupdate = $conn->query($sql);


                            }
                        } else {
                            echo "0 results";
                        }
           
     
       
       
    }
    
} else {
    echo "No records found where 'sent' is 0.";
}

 



// Function to send FCM notification using curl
function sendFCMNotification($device_id, $title, $body, $image, $serverKey, $url) {
    $data = [
        'message' => [
            'token' => $device_id,
            'notification' => [
                'title' => $title,
                'body' => $body,
                'image' => $image,
            ],
        ],
    ];

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'Authorization: Bearer ' . $serverKey,
        'Content-Type: application/json'
    ]);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));

    $response = curl_exec($ch);
    $err = curl_error($ch);
    curl_close($ch);

    if ($err) {
        echo 'cURL Error #: ' . $err.'<br>';
    } else {
        
        
        
        // echo 'Response: ' . $response.'<br>';
    }
}
 $conn->close();
?>