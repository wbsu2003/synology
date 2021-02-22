<?php
/************************************/
/********** CONFING START ***********/

// Only allow request made by localhost?
// Set this to false if this script is not running on your synology webserver (less secure)
$localOnly = true;

/********** CONFING END *************/
/************************************/
echo time();
// Validate httpHost and/or remote addr?
if ($localOnly) {
    if ($_SERVER['HTTP_HOST'] != 'localhost') {
        // Not locahost
        echo 'Not locahost';
        die;
    }
}

// Set variables
$options = array(
    'source' => isset($_GET['source']) ? $_GET['source'] : false,
    'receiver' => isset($_GET['receiver']) ? $_GET['receiverid'] : false,
    'content' => isset($_GET['content']) ? $_GET['content'] : false,
    'title' => isset($_GET['title']) ? $_GET['title'] : false
);
// Remove empty values
$options = array_filter($options);


// Quit if not exactly 4 get values were found
if (count($options) != 4) {
    echo 'invalid options';
    die;
}

// Do Alertovover curl
curl_setopt_array($ch = curl_init(), array(
    CURLOPT_URL => "https://api.alertover.com/v1/alert",
    CURLOPT_POSTFIELDS => $options,
    CURLOPT_SAFE_UPLOAD => true,
));
curl_exec($ch);
curl_close($ch);
?>