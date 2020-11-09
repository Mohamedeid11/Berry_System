<?php

/*
 * Following code will list all the our_services
 */
// array for JSON response
$response = array();

// include db connect class
include("db_connect.php");

// connecting to db
$db = new DB_CONNECT();

mysql_query("SET NAMES 'utf8'");

mysql_query("SET CHARACTER SET utf8");

mysql_query("SET SESSION collation_connection = 'utf8_unicode_ci'");


// get all our_services from our_services table

if (isset($_GET['lang'])  != '') {

    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `our_services` ORDER BY `id`  DESC") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // our_services node
        $response["our_services"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $our_services = array();
            $our_services["id"] = $row["id"];
            if ($lang == "ar") {
                $our_services["title"] = $row["title_ar"];
            } else {
                $our_services["title"] = $row["title_en"];
            }
            $our_services["date"] = $row["date"];
            
            // push single our_services into final response array
            array_push($response["our_services"], $our_services);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["our_services"] = array();

        // temp user array
        $our_services = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no our_services found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>