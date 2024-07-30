<?php
// send_notification.php
require_once 'database.php';
require_once 'functions.php';

$msg = "";




 if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Form data
    $indicator_name = $_POST['indicator_name'];
    $currency_name = $_POST['currency_name'];
    $signal_type = $_POST['signal_type'];
     $title = $currency_name . '  ' . $signal_type . '  ' . $indicator_name;
    $body = $_POST['body'];
    $image = $_POST['image'];
    
    $sent=1;
   
        
        
        // Prepare the SQL statement
        $sql = "INSERT INTO notifications (title, body, image, sent) VALUES ('$title', '$body', '$image', '$sent')";
        
         if ($conn->query($sql) === TRUE) {
            // echo "New record created successfully";
                $mid = $conn->insert_id;
                 $url=$url.'?id='.$mid;
                 
                  $sql = "SELECT * FROM users";
                     $result = $conn->query($sql);
                       
                        if ($result->num_rows > 0) {
                      
                            $msg="Notification Send Successfully";

                            while($row = $result->fetch_assoc()) {
                                     
                                    sendFCMNotification($row['device_id'], $title, $body, $image, $accessToken,$url);
                                
                            }
                        } else {
                            // echo "0 results";
                            $msg ='No user found';
                        }
                


        } else {
            // echo "Error: " . $sql . "<br>" . $conn->error;
        }

       
       
}
function sendFCMNotification($device_id, $title, $body, $image, $serverKey,$url) {   //$url is the which is opened on click of notification 
    $color='#00000';
 
      $data = [
        'message' => [
            'token' => $device_id,
            'notification' => [
                'title' => $title,
                'body' => $body,
                'image' => $image
            ],
            'webpush' => [
                'fcm_options' => [
                    'link' => $url// Add click action here
                ]
            ],
            'data' => [
                'extra_information' => 'Some extra information'
            ]
        ]
    ];
    $options = array(
        CURLOPT_URL => $serverurl,
        CURLOPT_POST => true,
        CURLOPT_HTTPHEADER => array(
            "Authorization: Bearer " . $serverKey,
            "Content-Type: application/json",
        ),
        CURLOPT_POSTFIELDS => json_encode($data),
    );
    $curl = curl_init();
    curl_setopt_array($curl, $options);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($curl);
   $err = curl_error($curl);
    curl_close($curl);

    if ($err) {
        echo 'cURL Error #: ' . $err.'<br>';
    } else {
        
        
         
        echo 'Response: ' . $response.'<br>';
    }
    
}
 
 
$conn->close();
?>
<?php echo $msg; ?>
