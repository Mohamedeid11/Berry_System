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

    <div class="deleteData"></div>

    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title"><?=lang('about_project')?> </h4>
                        <ol class="breadcrumb">
                            <li><a href="about_project_view.php"><?=lang('about_project')?></a></li>
                            <li class="active"><?=lang('about_project')?> </li>
                        </ol>
                    </div>
                </div>

                <div class="panel">
                    <div class="panel-body">
                        <div class="">
                            <table class="table table-striped" id="datatable-editable">
                                <div class="border">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th><?=lang('project_name_english')?></th>
                                        <th><?=lang('project_name_arabic')?></th>
                                        <th> <?=lang('date_add')?></th>
                                        <th> <?=lang('action')?> </th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    global $con;

                                    $query = $con->query("SELECT * FROM `about_project` ORDER BY `id` ASC");
                                    $x = 1;
                                    while ($row = mysqli_fetch_assoc($query)) {
                                        $id = $row['id'];
                                        $project_id = $row['project_id'];
                                        $desc_en = $row['desc_en'];
                                        $desc_ar = $row['desc_ar'];
                                        $date = $row['date'];
                                        ?>
                                        <tr class="gradeX">
                                            <td><?php echo $x; ?></td>
                                            <?php
                                            $queryB = $con->query("SELECT * FROM `projects` WHERE `project_id`='$project_id'");

                                            while ($row = mysqli_fetch_assoc($queryB)) {
                                                $project_name_en = $row['project_name_en'] ;
                                                $project_name_ar = $row['project_name_ar'] ;
                                            }
                                            ?>

                                            <td>
                                                <?= $project_name_en ?>
                                            </td>
                                            <td>
                                                <?= $project_name_ar ?>
                                            </td>
                                            </td>
                                            <td><?= $date; ?></td>
                                            <td class="actions">
                                                <a href="about_project_edit.php?projectID=<?= $id; ?>" class="on-default"><i class="fa fa-pencil"></i></a>
                                            </td>
                                            <td class="actions">
                                                <a href="<?= $id; ?>" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
                                            </td>
                                        </tr>
                                        <?php
                                        $x++;
                                    }
                                    ?>
                                </div>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <?php include("include/footer_text.php"); ?>

    </div>

    <!-- MODAL -->
    <div id="dialog" class="modal-block mfp-hide">
        <section class="panel panel-info panel-color">
            <header class="panel-heading">
                <h2 class="panel-title">Are you sure ?</h2>
            </header>
            <div class="panel-body">
                <div class="modal-wrapper">
                    <div class="modal-text">
                        <p>Do You Want to deltel ? </p>
                    </div>
                </div>
                <div class="row m-t-20">
                    <div class="col-md-12 text-right">
                        <button id="dialogConfirm" class="btn btn-primary waves-effect waves-light">Confirm </button>
                        <button id="dialogCancel" class="btn btn-default waves-effect">Cancell </button>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- end Modal -->

    <!-- End Right content here -->

    <!-- Right Sidebar -->
    <div class="side-bar right-bar nicescroll">
        <?php include("include/rightbar.php"); ?>
    </div>
    <!-- /Right-bar -->
</div>
<!-- END wrapper -->
<?php include("include/footer.php"); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $('body').on('click', '.on-default', function () {
            var id = $(this).attr('href');
            // alert(category);
            $("#dialogConfirm").click(function () {
                var dataString = 'id=' + id;
                $.ajax({
                    type: "POST",
                    url: "functions/about_project_function.php",
                    data: dataString,
                    dataType: 'text',
                    cache: false,
                    success: function (data) {
                        $(".deleteData").html(data);
                        //alert(category);
                    }
                });
            });
        });
    });
</script>

<script>
    $(document).ready(function () {
        $("#cssmenu ul>li").removeClass("active");
        $("#item4").addClass("active");
    });
</script>

</body>
</html>