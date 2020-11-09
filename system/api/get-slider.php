<?php

/*
 * Following code will list all the projectss
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


// get all projectss from projectss table


if (isset($_GET['lang']) != '') {

//    $sub_category_id = $_GET['sub_category_id'];
    $lang = $_GET['lang'];
//    $client_id = $_GET['client_id'];

//    $result = mysql_query("SELECT * FROM `sub_categories` WHERE `parent_category_id`='$parent_category_id' and `display`=1 order by sub_category_id desc") or die(mysql_error());
    $result = mysql_query(" SELECT * FROM `slider`") or die(mysql_error());


// check for empty result
    if (mysql_num_rows($result) > 0) {
        // looping through all results
        // projectss node
        $response["slider"] = array();

        while ($row = mysql_fetch_array($result)) {

            // temp user array
            $slider = array();
            $slider["id"] = $row["id"];
            if ($lang == "ar") {
                $slider["desc"] = $row["desc_ar"];
            } else {
                $slider["desc"] = $row["desc_en"];
            }
            $slider["image"] = $row["image"];
            $slider_id = $row["id"];
//            $slider["evaluate"] = resume_evaluate($slider_id);


            // push single slider into final response array
            array_push($response["slider"], $slider);
        }
        // success
        $response["success"] = 1;


        // echoing JSON response
        echo json_encode($response);
    } else {

        $response["slider"] = array();

        // temp user array
        $slider = array();

        // success
        $response["success"] = 1;

        // echoing JSON response
        echo json_encode($response);
    }

}


else {
    // no projectss found
    $response["success"] = 0;
    $response["message"] = "هناك بيانات مفقوده برجاء مراجعة بياناتك";

    // echo no users JSON
    echo json_encode($response);
}
?>