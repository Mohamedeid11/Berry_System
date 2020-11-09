<?php

/*
 * Following code will list all the partners
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


// get all partners from partners table

if (isset($_GET['lang'])  != '') {

    $lang = $_GET['lang'];

    $result = mysql_query("SELECT * FROM `partners` ORDER BY `partners_id`  DESC") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // partners node
        $response["partners"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $partners_id = array();
            $partners_id["partners_id"] = $row["partners_id"];
            if ($lang == "ar") {
                $partners_id["title"] = $row["partners_title_ar"];
            } else {
                $partners_id["title"] = $row["partners_title_en"];
            }
            $partners_id["partners_logo"] = $row["partners_logo"];
            $partners_id["date"] = $row["date"];

            // push single partners into final response array
            array_push($response["partners"], $partners_id);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["partners"] = array();

        // temp user array
        $partners_id = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // no partners found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>