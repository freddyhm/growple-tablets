<!DOCTYPE html>
 <html> 
<!-- <html manifest="<?php //echo URL . 'config/' . ENVIRONMENT . '/owl/meet.appcache' ?>"> -->
<head>
	<!-- Don't ever take this out, never, ever, ever -> this makes the korean symbols magically appear in the browser - FHM -->
	<meta http-equiv="Content-Type" content="text/html;charset=utf8">
    <!-- STYLESHEET-->
    <link rel="stylesheet" href="<?php echo URL . 'public/css/main.css'; ?>">
    <link rel="stylesheet" href="<?php echo URL . 'public/css/confirm.css'; ?>">
    <!-- SCRIPTS -->
    <script src="<?php echo URL . 'public/js/jquery-1.8.3.min.js'; ?>"></script>
    <script src="<?php echo URL . 'public/js/jstorage.js'; ?>"></script>
    <script src="<?php echo URL . 'public/js/slides.min.jquery.js';?>"></script>
    <script src="<?php echo URL . 'public/js/jquery.simplemodal.js'; ?>"></script>
    <script src="<?php echo URL . 'config/' . ENVIRONMENT . '/settings.js'; ?>"></script>
    <script src="<?php echo URL . 'public/js/analytics.js'; ?>"></script>
    <script src="<?php echo URL . 'public/js/main.js'; ?>"></script>
</head>	
<body>
    <div id="setup">
    	<div id="noSleep" style="display:none;">
            <video id='noSleepVid' loop='loop' autoplay='autoplay' src="<?php echo URL . 'public/vid/nosleep.mp4'; ?>"></video>
        </div>
    	<div id="sleepSlideshow">
            <div class="slides_container">
                <?php 
                /*
                // extract promo slides and display
                $promos = Promo::find_all_by_promotype_id(1);
                if($promos){
                    foreach($promos as $promo){ ?>
                    <div>
                        <img id="<?php echo $promo->name; ?>" class="promoSlide" src="<?php echo URL . 'public/img/sleep/' .$promo->filename; ?>">
                    </div>
                <?php } } */?>
                <div>
                    <img src="<?php echo URL . 'public/img/sleep/slide1.jpg'?>">;
                </div>
                <div>
                    <img src="<?php echo URL . 'public/img/sleep/slide2.jpg'?>">;
                </div>
                <div>
                    <img src="<?php echo URL . 'public/img/sleep/slide3.jpg'?>">;
                </div>
                <div>
                    <img src="<?php echo URL . 'public/img/sleep/slide4.jpg'?>">;
                </div>
                <div>
                    <img src="<?php echo URL . 'public/img/sleep/slide5.jpg'?>">;
                </div>
            </div>
        </div>
    </div>
	<div class="playbook">
		<div class="content">
            <img id="confirm-x" src="<?php echo URL . 'public/img/confirm/x.png'; ?>">
            <!-- modal content -->
            <div id='confirm'>
                <div class='header'></div>
            </div>
            <!--Navbar-->
            <!--
            <div id="navbar">
                <div class="nav-btn" id="discover-btn">
                    <img class="nav-link" id="discover-title" src="<?php echo URL . 'public/img/common/discover-pressed.png'; ?>">
                </div>
                <div class="nav-btn" id="play-btn">
                  <img class="nav-link" id="play-title" src="<?php echo URL . 'public/img/common/play-nonpressed.png'; ?>">
                </div>
             </div>
         -->
             <div id="loadPage">
                <img src="<?php echo URL . 'public/img/common/start_bg1.jpg'; ?>">
                <!-- START LOGO BUTTON -->
                <div id ="main_logo">
                    <div id="loading">
                        <img id="load_pic" src="<?php echo URL . 'public/img/common/loading.gif'; ?>">
                    </div>  
                    <img id="start_screen" src="<?php echo URL . 'public/img/common/start_btn_logo.png'; ?>">
                </div>
            </div>