<div id="cssmenu">
    <ul>
        <li id="item1" class="active"><a href="index.php"><span>Home</span></a></li>
        <?php if ($_SESSION['cat_and_sub'] == '1') { ?>

            <li id="item4" class="has-sub">
                <a href="#"><span> Slider</span></a>
                <ul class="has-sub">
                    <li><a href="slider_add.php"><span>Add Slider  </span></a></li>
                    <li><a href="slider_view.php"><span> View All </span></a></li>
                </ul>
            </li>

            <li id="item3" class="has-sub">
                <a href="#"><span>Projects</span></a>
                <ul class="has-sub">
                    <li><a href="projects_add.php"><span>Add New Project  </span></a></li>
                    <li><a href="projects_view.php"><span>View All </span></a></li>
                </ul>
            </li>

            <li id="item12" class="has-sub">
                <a href="#"><span>Clients</span></a>
                <ul class="has-sub">
                    <li><a href="client_add.php"><span>Add New Client</span></a></li>
                    <li><a href="client_view.php"><span>View All</span></a></li>
                </ul>
            </li>
        <?php } ?>


        <?php if ($_SESSION['statics'] == '1') { ?>
            <li id="item1" class="has-sub">
                <a href="#"><span> About Project</span></a>
                <ul class="has-sub">
                    <li><a href="about_project_add.php"><span>Add New About Project </span></a></li>
                    <li><a href="about_project_view.php"><span> View All </span></a></li>
                </ul>
            </li>
        <?php } ?>

        
        <?php if ($_SESSION['comments'] == '1') { ?>
            <li id="item3" class="has-sub">
                <a href="#"><span>Services</span></a>
                <ul class="has-sub">
                    <li><a href="service_add.php"><span>Add New Service  </span></a></li>
                    <li><a href="service_view.php"><span>View All </span></a></li>
                </ul>
            </li>
        <?php } ?>

        <?php if ($_SESSION['clients'] == '1') { ?>
            <li id="item7" class="has-sub">
                <a href="#"><span>Project Images</span></a>
                <ul class="has-sub">
                    <li><a href="project_images_add.php"><span>Add New </span></a></li>
                    <li><a href="project_images_view.php"><span> View All </span></a></li>
                </ul>
            </li>

            <li id="item7" class="has-sub">
                <a href="#"><span>Project Finishing</span></a>
                <ul class="has-sub">
                    <li><a href="project_finishing_add.php"><span>Add New </span></a></li>
                    <li><a href="project_finishing_view.php"><span> View All </span></a></li>
                </ul>
            </li>
            <li id="item7" class="has-sub">
                <a href="#"><span>Engineering Drawing</span></a>
                <ul class="has-sub">
                    <li><a href="engineering_drawing_add.php"><span>Add New </span></a></li>
                    <li><a href="engineering_drawing_view.php"><span> View All </span></a></li>
                </ul>
            </li>

            <li id="item7" class="has-sub">
                <a href="#"><span>Project Location</span></a>
                <ul class="has-sub">
                    <li><a href="project_location_add.php"><span>Add Project Location</span></a></li>
                    <li><a href="project_location_view.php"><span> View All </span></a></li>
                </ul>
            </li>

        <?php } ?>

        <?php if ($_SESSION['problems'] == '1') { ?>
            <li id="item103" class="has-sub"
            ><a href="#"><span>News </span></a>
                <ul class="has-sub">
                    <li><a href="news_add.php"><span>Add News</span></a></li>
                    <li><a href="news_view.php"><span>View All News</span></a></li>
                </ul>
            </li>

            <!--            <li id="item13" class="has-sub">-->
            <!--                <a href="complaints_view.php"><span>Complaints</span></a>-->
            <!--            </li>-->
        <?php } ?>

        <?php if ($_SESSION['about'] == '1') { ?>


            <li id="item9" class="has-sub">
                <a href="about_edit.php?id=1"><span>About Us</span></a>
            </li>

            <li id="item90" class="has-sub">
                <a href="contact_edit.php"><span>Contact Us</span></a>
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

            <li id="item112" ><a href="setting_edit.php"><span>Setting</span></a></li>

        <?php } ?>


        <li><a href="logout.php"><span>Logout </span></a></li>



    </ul>
</div>