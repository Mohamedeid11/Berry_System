<div class="content-page">
    <div class="content">
        <div class="container">

            <h3 style="display:block;text-align:center;margin-top: 15px;border-bottom: 1px solid #000;width: 40%;margin-right: auto;padding: 20px 0;margin-left: auto;margin-bottom: 60px;">
                <?= lang('welcome_to_berry')?>

            </h3>

            <div class="row pricing-plan">
                <div class="col-md-12">
                    <div class="row">

                        <?php if ($_SESSION['cat_and_sub'] == '1') { ?>
                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-slideshare"></i> <?= lang('slider')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="slider_add.php"><span><?= lang('add_new_slider')?></span></a></li>
                                        <li><a href="slider_view.php"><span><?= lang('view_all')?> </span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-building"></i> <?= lang('projects')?> </span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="projects_add.php"><span><?= lang('add_new_project')?></span></a></li>
                                        <li><a href="projects_view.php"><span><?= lang('view_all')?> </span></a></li>
                                    </ul>
                                </div>
                            </div>

                        <?php } ?>



<!--                        --><?php //if ($_SESSION['orders'] == '1') { ?>
                                <div class="col-md-3 col-lg-3 col-xl-3">
                                    <div class="price_card text-center">
                                        <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                            <span class="name"> <i class="fa fa-users"></i> <?= lang('clients')?></span>
                                        </div>
                                        <ul class="price-features">
                                            <li><a href="client_add.php"><span><?= lang('add_new_clients')?></span></a></li>
                                            <li><a href="client_view.php"><span><?= lang('view_all')?> </span></a></li>
                                        </ul>
                                    </div>
                                </div>
<!---->
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-cart-arrow-down"></i> Orders</span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="order_add.php"><span>Add New Order  </span></a></li>-->
<!--                                        <li><a href="order_view.php"><span>Current Orders  </span></a></li>-->
<!--                                        <li><a href="last_orders.php"><span>Last Orders  </span></a></li>-->
<!--                                        <li><a href="payment.php"><span>Payment</span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        --><?php //} ?>
                        <?php if ($_SESSION['clients'] == '1') { ?>


                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-info"></i> <?= lang('about_project')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="about_project_add.php"><span><?= lang('add_new_about')?></span></a></li>
                                        <li><a href="about_project_view.php"><span><?= lang('view_all')?> </span></a></li>
                                    </ul>
                                </div>
                            </div>
                        <?php } ?>

                        <?php if ($_SESSION['about'] == '1') { ?>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-file"></i> <?= lang('project_service')?> </span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="service_add.php"><span><?= lang('add_new_project_service')?></span></a></li>
                                        <li><a href="service_view.php"><span><?= lang('view_all')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-image"></i> <?= lang('project_image')?> </span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="project_images_add.php"><span><?= lang('add_new_project_image')?></span></a></li>
                                        <li><a href="project_images_view.php"><span><?= lang('view_all')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-file"></i> <?= lang('project_finishing')?> </span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="project_finishing_add.php"><span><?= lang('add_new_project_finishing')?></span></a></li>
                                        <li><a href="project_finishing_view.php"><span><?= lang('view_all')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-image"></i> <?= lang('project_drawing')?> </span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="engineering_drawing_add.php"><span><?= lang('add_new_project_drawing')?> </span></a></li>
                                        <li><a href="engineering_drawing_view.php"><span><?= lang('view_all')?></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa  fa-map-marker "></i> <?= lang('project_location')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="project_location_add.php"><span><?= lang('add_new_project_location')?></span></a></li>
                                        <li><a href="project_location_view.php"><span><?= lang('view_all')?></span></a></li>
                                    </ul>
                                </div>
                            </div>

                        <?php } ?>

                        <?php if ($_SESSION['users'] == '1') { ?>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-newspaper-o"></i> <?= lang('news')?> </span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="news_add.php"><span><?= lang('add_new_news')?></span></a></li>
                                        <li><a href="news_view.php"><span><?= lang('view_all')?> </span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-3 col-xl-3">
                                <div class="price_card text-center">
                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">
                                        <span class="name"> <i class="fa fa-info"></i> <?= lang('about_us')?></span>
                                    </div>
                                    <ul class="price-features">
                                        <li><a href="about_edit.php?id=1"><span><?= lang('about_berry')?>
                                                </span></a></li>
                                        <li><a href="contact_edit.php"><span><?= lang('contact_us')?></span></a></li>
                                        <li><a href="setting_edit.php"><span><?= lang('settings')?></span></a></li>
                                    </ul>
                                </div>
                            </div>
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-user"></i> Users</span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="user_add.php"><span>Add New User</span></a></li>-->
<!--                                        <li><a href="users_view.php"><span>View All</span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
                        <?php } ?>
<!--                        --><?php //if ($_SESSION['reports'] == '1') { ?>
<!---->
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-file"></i> Reports</span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="financial_report.php"><span>Financial Report By Date</span></a></li>-->
<!---->
<!--                                        <li><a href="select_financial_report.php"><span>Choose  Report Type</span></a></li>-->
<!--                                        <li><a href="print_deleted_report.php"><span>  Report Deleted Requests</span></a></li>-->
<!--                                        <li><a href="print_edited_report.php"><span>Report Edited Requests-->
<!--                                                </span></a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        --><?php //} ?>

<!--                        --><?php //if ($_SESSION['statics'] == '1') { ?>
<!---->
<!--                            <div class="col-md-3 col-lg-3 col-xl-3">-->
<!--                                <div class="price_card text-center">-->
<!--                                    <div class="pricing-header bg-success" style="background-color:#967041 !important;">-->
<!--                                        <span class="name"> <i class="fa fa-dollar"></i> Statistics</span>-->
<!--                                    </div>-->
<!--                                    <ul class="price-features">-->
<!--                                        <li><a href="statistics.php">View Statistics </a></li>-->
<!--                                    </ul>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        --><?php //} ?>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <?php include("include/footer_text.php"); ?>
</div>
