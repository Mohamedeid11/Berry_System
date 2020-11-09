<?php


function parent_cat_count() {

    global $con;

    $query = $con->query("SELECT * FROM `parent_categories` ORDER BY `parent_category_id` ASC");

    $parent_cat_count = mysqli_num_rows($query);

    return $parent_cat_count;
}

if (isset($_POST['change_status_on'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_on'];

    $query = $con->query("UPDATE `our_services` SET `display`=1 WHERE `id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}

if (isset($_POST['change_status_off'])) {

    include("../connection.php");

    $change_status = $_POST['change_status_off'];

    $query = $con->query("UPDATE `our_services` SET `display`=0 WHERE `id`='$change_status'");

    if ($query) {
        echo get_success("Status changed successfully");
    }
}


if (isset($_POST['service_id'])) {

    include("../connection.php");

    $id = $_POST['service_id'];

    $querya = $con->query("SELECT * FROM `our_services` WHERE `id`='$id' limit 1");

    $row_select = mysqli_fetch_array($querya);

    $query = $con->query("DELETE FROM `our_services` WHERE `id`='$id'");

    if ($query) {
        echo get_success("تم الحذف بنجاح");
    }
}





