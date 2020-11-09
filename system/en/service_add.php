<?php
include("config.php");
if (!loggedin()) {
    header("Location: login.php");
    exit();
}if (($_SESSION['clients'] != '1')) {
    header("Location: error.php");
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

    <?php
    if (isset($_POST['submit'])) {

        $project_id = $_POST['project_id'];

        $desc_en = mysqli_real_escape_string($con, trim($_POST['desc_en']));

        $desc_ar = mysqli_real_escape_string($con, trim($_POST['desc_ar']));


        $errors = array();

        if (empty($desc_en)) {
            $errors[] = "Please enter all fields !";
        }
        if (empty($desc_ar)) {
            $errors[] = "Please enter all fields !";
        }
        if (!empty($errors)) {
            foreach ($errors as $error) {
                //echo $error, '<br />';
                echo get_error($error);
            }
        } else {
            $con->query(" INSERT INTO `project_service` (`project_id`, `desc_en`, `desc_ar`) VALUES ('$project_id' , '$desc_en', '$desc_ar')");
            echo get_success("Successfully Added");
        }
    }
    ?>

    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">
                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><?=lang('project_service')?></h4>
                        <ol class="breadcrumb">
                            <li><a href="service_view.php"><?=lang('project_service')?></a></li>
                            <li class="active"><?=lang('add_new_project_service')?></li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h4 class="m-t-0 header-title"><b><?=lang('add_new_project_service')?> </b></h4>
                            <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" data-parsley-validate novalidate>
                                <div class="form-group m-b-0">
                                    <label class="control-label"><?=lang('projects')?></label>
                                    <select class="form-control select2me" name="project_id" id="project_id" required>
                                        <option selected='selected' value="" ><?=lang('choose')?></option>
                                        <?php
                                        $query = $con->query("SELECT * FROM `projects` ORDER BY `project_id` ASC");
                                        while ($row = mysqli_fetch_assoc($query)) {
                                            $project_id = $row['project_id'];
                                            $project_name_en = $row['project_name_en'];
                                            $project_name_ar = $row['project_name_ar'];
                                            echo "<option value='{$project_id}'>{$project_name_en}-{$project_name_ar}</option>";
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-5">
                                    <label for="sub_cat_desc"><?=lang('project_service_english')?></label>
                                    <textarea class="form-control" rows="3" name="desc_en"  minlength="3" maxlength="1000" ></textarea>
                                </div>
                                <div class="form-group col-md-5">
                                    <label for="sub_cat_desc_ar"><?=lang('project_service_arabic')?></label>
                                    <textarea class="form-control" rows="3" name="desc_ar"  minlength="3" maxlength="1000" ></textarea>
                                </div>
                                <div class="clearfix"></div>

                                <br />

                                <br>
                                <div class="form-group text-right m-b-0">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit" name="submit"> <?=lang('save')?> </button>
                                    <button type="reset" class="btn btn-default waves-effect waves-light m-l-5"> <?=lang('cancel')?> </button>
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
        $("#item5").addClass("active");
    });
</script>

</body>
</html>