<div id="cssmenu">
    <ul>
        <li id="item1" class="active"><a href="index.php"><span><?= lang('home')?></span></a></li>
        <?php if ($_SESSION['cat_and_sub'] == '1') { ?>

            <li id="item4" class="has-sub">
                <a href="#"><span><?= lang('slider')?></span></a>
                <ul class="has-sub">
                    <li><a href="slider_add.php"><span><?= lang('add_new_slider')?>  </span></a></li>
                    <li><a href="slider_view.php"><span> <?= lang('view_all')?> </span></a></li>
                </ul>
            </li>

            <li id="item3" class="has-sub">
                <a href="#"><span><?= lang('projects')?></span></a>
                <ul class="has-sub">
                    <li><a href="projects_add.php"><span><?= lang('add_new_project')?> </span></a></li>
                    <li><a href="projects_view.php"><span><?= lang('view_all')?> </span></a></li>
                </ul>
            </li>

            <li id="item12" class="has-sub">
                <a href="#"><span><?= lang('clients')?></span></a>
                <ul class="has-sub">
                    <li><a href="client_add.php"><span><?= lang('add_new_clients')?></span></a></li>
                    <li><a href="client_view.php"><span><?= lang('view_all')?></span></a></li>
                </ul>
            </li>
        <?php } ?>


        <?php if ($_SESSION['statics'] == '1') { ?>
            <li id="item1" class="has-sub">
                <a href="#"><span> <?= lang('about_project')?></span></a>
                <ul class="has-sub">
                    <li><a href="about_project_add.php"><span><?= lang('add_new_about')?> </span></a></li>
                    <li><a href="about_project_view.php"><span> <?= lang('view_all')?> </span></a></li>
                </ul>
            </li>
        <?php } ?>

        
        <?php if ($_SESSION['comments'] == '1') { ?>
            <li id="item3" class="has-sub">
                <a href="#"><span><?= lang('project_service')?></span></a>
                <ul class="has-sub">
                    <li><a href="service_add.php"><span><?= lang('add_new_project_service')?>  </span></a></li>
                    <li><a href="service_view.php"><span><?= lang('view_all')?> </span></a></li>
                </ul>
            </li>
        <?php } ?>

        <?php if ($_SESSION['clients'] == '1') { ?>
            <li id="item7" class="has-sub">
                <a href="#"><span><?= lang('project_image')?></span></a>
                <ul class="has-sub">
                    <li><a href="project_images_add.php"><span><?= lang('add_new_project_image')?> </span></a></li>
                    <li><a href="project_images_view.php"><span> <?= lang('view_all')?></span></a></li>
                </ul>
            </li>

            <li id="item7" class="has-sub">
                <a href="#"><span><?= lang('project_finishing')?></span></a>
                <ul class="has-sub">
                    <li><a href="project_finishing_add.php"><span><?= lang('add_new_project_finishing')?> </span></a></li>
                    <li><a href="project_finishing_view.php"><span> <?= lang('view_all')?> </span></a></li>
                </ul>
            </li>
            <li id="item7" class="has-sub">
                <a href="#"><span><?= lang('project_drawing')?></span></a>
                <ul class="has-sub">
                    <li><a href="engineering_drawing_add.php"><span><?= lang('add_new_project_drawing')?> </span></a></li>
                    <li><a href="engineering_drawing_view.php"><span> <?= lang('view_all')?> </span></a></li>
                </ul>
            </li>

            <li id="item7" class="has-sub">
                <a href="#"><span><?= lang('project_location')?></span></a>
                <ul class="has-sub">
                    <li><a href="project_location_add.php"><span><?= lang('add_new_project_location')?></span></a></li>
                    <li><a href="project_location_view.php"><span> <?= lang('view_all')?> </span></a></li>
                </ul>
            </li>

        <?php } ?>

        <?php if ($_SESSION['problems'] == '1') { ?>
            <li id="item103" class="has-sub"
            ><a href="#"><span><?= lang('news')?> </span></a>
                <ul class="has-sub">
                    <li><a href="news_add.php"><span><?= lang('add_new_news')?></span></a></li>
                    <li><a href="news_view.php"><span><?= lang('view_all')?></span></a></li>
                </ul>
            </li>

            <!--            <li id="item13" class="has-sub">-->
            <!--                <a href="complaints_view.php"><span>Complaints</span></a>-->
            <!--            </li>-->
        <?php } ?>

        <?php if ($_SESSION['about'] == '1') { ?>


            <li id="item9" class="has-sub">
                <a href="about_edit.php?id=1"><span><?= lang('about_us')?></span></a>
            </li>

            <li id="item90" class="has-sub">
                <a href="contact_edit.php"><span><?= lang('contact_us')?></span></a>
            </li>

        <?php } ?>



        <?php if ($_SESSION['comments'] == '1') { ?>

<!--            <li id="item101" class="has-sub"><a href="subcat_comments_view.php"><span>Comments </span></a></li>-->
        <?php } ?>

        <?php if ($_SESSION['messages'] == '1') { ?>

<!--            <li id="item103" class="has-sub"-->
<!--                ><a href="#"><span>Messages </span></a>-->
<!--                <ul class="has-sub">-->
<!--                    <li><a href="messages_view.php"><span>View All messages</span></a></li>-->
<!--                </ul>-->
<!--            </li>-->
        <?php } ?>

        <?php if ($_SESSION['users'] == '1') { ?>

<!--            <li id="item12" class="has-sub">-->
<!--                <a href="#"><span>Clients</span></a>-->
<!--                <ul class="has-sub">-->
<!--                    <li><a href="client_add.php"><span>Add New Client</span></a></li>-->
<!--                    <li><a href="client_view.php"><span>View All</span></a></li>-->
<!--                </ul>-->
<!--            </li>-->

            <li id="item112" ><a href="setting_edit.php"><span><?= lang('settings')?></span></a></li>
            
            <li id="item12" class="has-sub">
                <a href="#"><span><?= lang('language') ?></span></a>
                <ul class="has-sub">
                    <li><a class="dropdown-item text-<?= lang('align') ?>" href="?change_lang=ar">العربية</a></li>
                    <li><a class="dropdown-item text-<?= lang('align') ?>" href="?change_lang=en">Einglish</a></li>
                </ul>
            </li>

        <?php } ?>


        <li><a href="logout.php"><span><?= lang('logout')?> </span></a></li>

    </ul>
</div>