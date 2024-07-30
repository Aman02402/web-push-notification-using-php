<?php
// functions.php
 
require 'vendor/autoload.php';

use Google\Auth\Credentials\ServiceAccountCredentials;
use Google\Cloud\Firestore\FirestoreClient;

use Google\Auth\OAuth2;
use Google\Cloud\Core\ExponentialBackoff;







$url = 'https://welive24.com/notification/detail.php';
 

$serverurl='https://fcm.googleapis.com/v1/projects/your_project_id/messages:send';
 






function getAccessToken($credentialsFilePath) {
      $client = new \Google_Client();
     $client->setAuthConfig($credentialsFilePath);
     $client->addScope('https://www.googleapis.com/auth/firebase.messaging');
     $client->refreshTokenWithAssertion();
     $token = $client->getAccessToken();
     return $token['access_token'];
}


$serviceAccountJsonPath = 'service-account-file.json';   // upload your own service account file from firebase;


$accessToken = getAccessToken($serviceAccountJsonPath);

 

?>
