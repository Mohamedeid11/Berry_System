<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['cat_and_sub'] != '1')) {
    header("Location: error.php");
    exit();
}
?>

<?php
// error_reporting(0);

if (isset($_POST['our_service_update'])) {

    $service_id_update = $_POST['service_id_update'];

    $title_en = $_POST['title_en'];
    $title_ar = $_POST['title_ar'];
    $display = $_POST['display'];


    $errors = array();

    if (!empty($errors)) {
        foreach ($errors as $error) {
            //echo $error, '<br />';
            echo get_error($error);
        }
    } else {

        $update = $con->query("UPDATE `our_services` SET  `title_en`='$title_en',`title_ar`='$title_ar',`display`='$display' WHERE `id`='$service_id_update'");
        echo get_success("Successfully updated");
        echo "<meta http-equiv='refresh' content='0'>";
    }
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
    <div class="container">
        </br>
        <div class="content-page">
            <div class="content">
                <div class="container">

                    <div class="row">
                        <div class="col-sm-12">
                            <h4 class="page-title"><?= lang('services')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="our_services_view.php"><?= lang('services')?></a></li>
                                <li class="active"><?= lang('services')?></li>
                            </ol>
                        </div>
                    </div>

                    <div class="updateData">

                        <?php
                        if (isset($_GET['serviceID'])) {
                            $service_id = $_GET['serviceID'];
                            $query_select = $con->query("SELECT * FROM `our_services` WHERE `id` = '{$service_id}' LIMIT 1");
                            $row_select = mysqli_fetch_array($query_select);

                            $id = $row_select['id'];
                            $title_en = $row_select['title_en'];
                            $title_ar = $row_select['title_ar'];
                            $display = $row_select['display'];

                            if ($query_select) {
                                ?>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="card-box">
                                            <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                                <input type="hidden" name="service_id_update" id="service_id_update" parsley-trigger="change" required value="<?php echo $id; ?>" class="form-control">

                                                <div class="form-group m-b-3">
                                                    <label for="parent_cat_name"> <?=lang('category_name_en')?> </label>
                                                    <input type="text" name="title_en" id="title_en" parsley-trigger="change"  value="<?php echo $title_en; ?>" class="form-control">
                                                </div>
                                                <div class="form-group m-b-3">
                                                    <label for="parent_cat_name_ar"> <?=lang('category_name_ar')?> </label>
                                                    <input type="text" name="title_ar" id="title_ar" parsley-trigger="change"  value="<?php echo $title_ar; ?>" class="form-control">
                                                </div>

                                                <div class="form-group m-b-3">
                                                    <label class="control-label"> <?=lang('status')?></label>
                                                    <select class="form-control" name="display"  parsley-trigger="change">
                                                        <option value="1" <?php
                                                        if ($display == '1') {
                                                            echo 'selected';
                                                        }
                                                        ?>>show</option>
                                                        <option value="0"  <?php
                                                        if ($display == '0') {
                                                            echo 'selected';
                                                        }
                                                        ?>>hidden</option>
                                                    </select>
                                                </div>
                                                <div class="form-group text-right m-b-0">
                                                    <button class="btn btn-primary waves-effect waves-light" type="submit" name="our_service_update" id="our_service_update"><?=lang('save')?></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(document).ready(function () {
                                        $('.image-popup').magnificPopup({
                                            type: 'image',
                                            closeOnContentClick: true,
                                            mainClass: 'mfp-fade',
                                            gallery: {
                                                enabled: true,
                                                navigateByImgClick: true,
                                                preload: [0, 1] // Will preload 0 - before current, and 1 after the current image
                                            }
                                        });
                                    });
                                </script>
                                <?php
                            }
                        }
                        ?>

                    </div>


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
        $(document).ready(function () {
            $("#cssmenu ul>li").removeClass("active");
            $("#item16").addClass("active");
        });
    </script>

</body>
</html>