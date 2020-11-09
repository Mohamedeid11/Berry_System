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

if (isset($_POST['partner_update'])) {
    $temp = $_POST;

    $partner_id_update = $temp['partner_id_update'];
    $partners_title_en = $temp['partners_title_en'];
    $partners_title_ar = $temp['partners_title_ar'];
    $display = $temp['display'];




    if (isset($_FILES['image_update']['name']) && !empty($_FILES['image_update']['name'])) {

        $image_ext_old = $_POST['image_ext_old'];
        $mostafa = explode('/', $image_ext_old);
        $image_name = $mostafa[7];
        $full_img_path = "../api/uploads/Partners/$partner_id_update" . "/" . $image_name;
        if (file_exists($full_img_path)) {
            @unlink($full_img_path);
        }

        if (!file_exists("../api/uploads/Partners/" . $partner_id_update)) {
            mkdir("../api/uploads/Partners/" . $partner_id_update, 0777, true);
        }

        $image_name_update = $_FILES['image_update']['name'];
        $image_tmp_update = $_FILES['image_update']['tmp_name'];

        $image_path = "../api/uploads/Partners/$partner_id_update" . "/" . $image_name_update;
        $image_database = "{$sit_url}/api/uploads/Partners/$partner_id_update" . "/" . $image_name_update;


        if (move_uploaded_file($image_tmp_update, $image_path)) {

            $update = $con->query("UPDATE `partners` SET `partners_title_en`='$partners_title_en' , `partners_title_ar`='$partners_title_ar' , `partners_logo`='$image_database' , `display`='$display'  WHERE `partners_id`='$partner_id_update'");
        }
        if ($update) {
            echo get_success("Updated Successfully ");
        } else {
            echo get_error("there's an error ");
        }
    }else {
        $update = $con->query("UPDATE `partners` SET `partners_title_en`='$partners_title_en' , `partners_title_ar`='$partners_title_ar' , `display`='$display'  WHERE `partners_id`='$partner_id_update'");
    }


//    $washer_services_prices_update = sub_cat_size_prices_update($temp);
    echo get_success("Successfully Updated");
    echo "<meta http-equiv='refresh' content='0'>";
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
                            <h4 class="page-title"><?=lang('partners')?></h4>
                            <ol class="breadcrumb">
                                <li><a href="partners_view.php"><?=lang('partners')?></a></li>
                                <li class="active"><?=lang('update_partners')?></li>
                            </ol>
                        </div>
                    </div>

                    <div class="updateData"></div>
                    <?php
                    if ($_GET['partnerID']) {

                    $get_partner_id = $_GET['partnerID'];

                    $query_select = $con->query("SELECT * FROM `partners` WHERE `partners_id` = '{$get_partner_id}' LIMIT 1");
                    $row_select = mysqli_fetch_array($query_select);

                    $partners_id = $row_select['partners_id'];
                    $partners_title_en = $row_select['partners_title_en'];
                    $partners_title_ar = $row_select['partners_title_ar'];
                    $display = $row_select['display'];


                    $partners_logo = $row_select['partners_logo'];
                    $get_image_ext = explode('.', $partners_logo);
                    $image_ext = strtolower(end($get_image_ext));

                    if ($query_select) {
                    ?>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card-box">
                                <form method="POST" enctype="multipart/form-data" data-parsley-validate novalidate>
                                    <input type="hidden" name="partner_id_update" id="partner_id_update" parsley-trigger="change"  value="<?= $partners_id; ?>" class="form-control">
                                    
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_name"><?=lang('title_en')?></label>
                                        <input type="text" name="partners_title_en" id="partners_title_en" parsley-trigger="change"  value="<?=$partners_title_en; ?>" class="form-control">
                                    </div>
                                    <div class="form-group col-md-5">
                                        <label for="sub_cat_name_ar"> <?=lang('title_ar')?></label>
                                        <input type="text" name="partners_title_ar" id="partners_title_ar" parsley-trigger="change"  value="<?= $partners_title_ar ?>" class="form-control">
                                    </div>

                                    <div class="clearfix"></div>

                                    <div class="form-group col-md-5">
                                        <label class="control-label">  <?=lang('status')?></label>
                                        <select class="form-control" name="display" required parsley-trigger="change">
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
                                        </select>hidden
                                    </div>


                                    <div class="clearfix"></div>

                                    <input type="hidden" name="image_ext_old" value="<?php echo $partners_logo; ?>" />
                                    <div class="form-group m-b-0">
                                        <label for="userName"><?= lang('image')?>  <a class="showImg"><?= lang('edit')?>?</a> </label>

                                        <div class="gal-detail thumb getImage">
                                            <a href="<?php echo $partners_logo; ?>" class="image-popup" title="<?= $partners_title_en ?>">
                                                <img src="<?php echo $partners_logo; ?>" class="thumb-img" alt="<?= $partners_title_en; ?>">
                                            </a>
                                        </div>

                                        <div class="form-group m-b-0">
                                            <label class="control-label"><?= lang('image')?> </label>
                                            <input type="file" name="image_update" id="image_update" class="filestyle" data-buttonname="btn-primary">
                                        </div>

                                    </div>
                                    <br />

                                    <div class="form-group text-right m-b-0">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit" name="partner_update" id="partner_update"><?= lang('save')?></button>
                                    </div>
                                </form>
                            </div>
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