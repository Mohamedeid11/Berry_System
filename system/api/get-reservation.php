<?php

/*
 * Following code will list all the projects
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


// get all projects from projects table

if (isset($_GET['lang'])  != '') {

    $lang = $_GET['lang'];
    $reservation_id = $_GET['reservation_id'];

    if ($lang == "ar") {
        $response["message"] = "تم حجز المنتج بنجاح";
    } else {
        $response["message"] = "The Product Has Been Reserved successfully ";
    }
    $response["reservation_id"] = "$reservation_id";
    // echo no users JSON
    echo json_encode($response);


} else {
    // no projects found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>