<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html>

<?php include("include/heads.php"); ?>
<body class="fixed-left">

<div id="wrapper">
    <!-- Top Bar Start -->
    <?php include("include/topbar.php"); ?>
    <!-- Top Bar End -->

    <!-- Left Sidebar Start -->
    <?php include("include/leftsidebar.php"); ?>
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->

    <?php
    // error_reporting(0);

    if (isset($_POST['client_update'])) {

        $clientID_update = $_POST['clientID_update'];
        $client_name_en = $_POST['client_name_en'];
        $client_name_ar = $_POST['client_name_ar'];
        $client_password = $_POST['client_password'];
        $client_email = $_POST['client_email'];
        $client_phone = $_POST['client_phone'];

        $errors = array();

        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        }
        else {
            $con->query("UPDATE `clients` SET `client_name_en`='$client_name_en' , `client_name_ar`='$client_name_ar',`client_password`='$client_password',`client_email`='$client_email',`client_phone`='$client_phone' WHERE `client_id`='$clientID_update'");
        }
        echo get_success("Successfully Updated");
        echo "<meta http-equiv='refresh' content='0'>";

    }

    ?>


    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title">Client </h4>
                        <ol class="breadcrumb">
                            <li><a href="client_view.php">Client  </a></li>
                            <li class="active"> Update Client  </li>
                        </ol>
                    </div>
                </div>

                <div class="updateData"></div>

                <?php
                if ($_GET['clientID']) {

                    $get_client_id = $_GET['clientID'];

                    $query_select = $con->query("SELECT * FROM `clients` WHERE `client_id` = '{$get_client_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $id = $row_select['client_id'];
                    $name_en = $row_select['client_name_en'];
                    $name_ar = $row_select['client_name_ar'];
                    $password = $row_select['client_password'];
                    $email = $row_select['client_email'];
                    $phone = $row_select['client_phone'];

                    if ($query_select) {
                        ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card-box">
                                    <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                        <input type="hidden" name="clientID_update" id="clientID_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">
                                        <div class="form-group">
                                            <label for="service_name">Client Name English  </label>
                                            <input type="text" name="client_name_en" parsley-trigger="change"  placeholder="Image Name IN English" class="form-control" id="client_name_en"  value="<?php echo $name_en; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="service_name">Client Name Arabic </label>
                                            <input type="text" name="client_name_ar" parsley-trigger="change"  placeholder="Image Name IN Arabic" class="form-control" id="client_name_ar"  value="<?= $name_ar ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="service_name">Client Password</label>
                                            <input type="text" name="client_password" parsley-trigger="change"  placeholder="Image Name IN Arabic" class="form-control" id="client_password"  value="<?= $password ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="service_name">Client Email </label>
                                            <input type="text" name="client_email" parsley-trigger="change"  placeholder="Image Name IN English" class="form-control" id="client_email"  value="<?php echo $email; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="service_name">Client Phone  </label>
                                            <input type="text" name="client_phone" parsley-trigger="change"  placeholder="Image Name IN Arabic" class="form-control" id="client_phone"  value="<?= $phone ?>">
                                        </div>
                                        <br>
                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit" name="client_update" id="updateMenu">تحديث</button>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <?php
                    }
                }
                ?>

            </div>
        </div>
        <?php include("include/footer_text.php"); ?>

    </div>

    <!-- End Right content here -->

    <!-- Right Sidebar -->
    <div class="side-bar right-bar nicescroll">
        <?php include("include/rightbar.php"); ?>
    </div>
    <!-- /Right-bar -->
</div>
<!-- END wrapper -->
<?php include("include/footer.php"); ?>
<script>
    $('.select2m').select2({
        placeholder: "Select",
        width: 'auto',
        allowClear: true
    });
</script>

</body>
</html>