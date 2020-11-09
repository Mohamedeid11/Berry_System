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
<!DOCTYPE html>
<html>
<?php include("include/heads.php"); ?>
<style>.red {
        /* color: #FFFFFF; */
        background-color: #cb5a5e;
    }</style>
<body class="fixed-left">
<div id="wrapper">
    <!-- Top Bar Start -->
    <?php include("include/topbar.php"); ?>
    <!-- Top Bar End -->

    <!-- Left Sidebar Start -->
    <?php include("include/leftsidebar.php"); ?>
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->

    <?php
    if (isset($_POST['submit'])) {

        $partners_title_en = mysqli_real_escape_string($con, trim($_POST['partners_title_en']));
        $partners_title_ar = mysqli_real_escape_string($con, trim($_POST['partners_title_ar']));
        $display = $_POST['display'];


        $partners_logo = $_FILES['partners_logo']['name'];
        $partners_tmp = $_FILES['partners_logo']['tmp_name'];


        $errors = array();
        if (empty($partners_title_en)) {
            $errors[] = "Please enter Partner title  In English!";
        }
        if (empty($partners_title_en)) {
            $errors[] = "Please enter partner Title In English!";
        }
        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {

            $con->query("INSERT INTO `partners` (`partners_title_en`, `partners_title_ar`, `display`) VALUES ('$partners_title_en', '$partners_title_ar', '  $display')");

            $id = mysqli_insert_id($con);
            if (!file_exists("../api/uploads/Partners/" . $id)) {
                mkdir("../api/uploads/Partners/" . $id, 0777, true);
            }
            $image_path = "../api/uploads/Partners/" . $id . "/" . $partners_logo;
            $image_database = "{$sit_url}/api/uploads/Partners/" . $id . "/" . $partners_logo;

            if (move_uploaded_file($partners_tmp, $image_path)) {
                $update = $con->query("UPDATE `partners` SET  `partners_logo`='$image_database' WHERE `partners_id`='$id'");
            }
            echo get_success("Successfully Added");
        }
    }
    ?>
    <div class="container">
        </br>
        <div class="content-page">
            <!-- Start content -->
            <div class="content">
                <div class="container">
                    <!-- Page-Title -->
                    <div class="row">
                        <div class="col-sm-12">
                            <h4 class="page-title"><?=lang('partners')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="partners_view.php"><?=lang('partners')?></a></li>
                                <li class="active"><?=lang('add_new_partners')?></li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card-box">
                                <h4 class="m-t-0 header-title"><b><?=lang('add_new_partners')?></b></h4>
                                <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" data-parsley-validate novalidate>
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_name"><b><?=lang('title_en')?></label>
                                        <input type="text" name="partners_title_en" parsley-trigger="change" required placeholder="<?=lang('title_en')?>" class="form-control" id="partners_title_en">
                                    </div>
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_name_ar"><?=lang('title_ar')?></label>
                                        <input type="text" name="partners_title_ar" parsley-trigger="change"  placeholder="<?=lang('title_ar')?>" class="form-control" id="partners_title_ar">
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="clearfix"></div>

                                    <div class="form-group col-md-5">
                                        <label class="control-label">  <?=lang('status')?></label>
                                        <select class="form-control" name="display" required parsley-trigger="change">
                                            <option value="1" >Show</option>
                                            <option value="0">Hidden</option>
                                        </select>
                                    </div>

                                    <div class="clearfix"></div>
                                    <div class="form-group m-b-0">
                                        <label class="control-label"><?=lang('image')?></label>
                                        <input type="file" name="partners_logo" id="partners_logo" class="filestyle" multiple data-buttonname="btn-primary">
                                    </div>
                                    <br />
                                    <div class="form-group text-right m-b-0">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit" name="submit"><?=lang('save')?></button>
                                        <button type="reset" class="btn btn-default waves-effect waves-light m-l-5"> <?=lang('cancel')?></button>
                                    </div>
                                </form>
                            </div>
                        </div>
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
            $("#item17").addClass("active");
        });
    </script>
</body>
</html>