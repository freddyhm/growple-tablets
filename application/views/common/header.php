<!DOCTYPE html>
<!-- <html>  -->
<html manifest="<?php echo URL . 'config/' . ENVIRONMENT . '/meet.appcache' ?>">
<head>
	<!-- Don't ever take this out, never, ever, ever -> this makes the korean symbols magically appear in the browser - FHM -->
	<meta http-equiv="Content-Type" content="text/html;charset=utf8">

    <!-- STYLESHEET-->
    <link rel="stylesheet" href="<?php echo URL . 'public/css/main.css'; ?>">
    <!-- SCRIPTS -->
    <script src="<?php echo URL . 'public/js/jquery-1.8.3.min.js'; ?>"></script>
    <script src="<?php echo URL . 'public/js/jquery.cookie.js'; ?>"></script>
    <script src="<?php echo URL . 'public/js/kenburns.js';?>"></script>
    <script src="<?php echo URL . 'config/' . ENVIRONMENT . '/settings.js'; ?>"></script>
    <script src="<?php echo URL . 'public/js/main.js'; ?>"></script>
    <script src="<?php echo URL . 'public/js/analytics.js'; ?>"></script>
</head>	
<body>
	<div style="display:none;"><video loop="loop" autoplay="autoplay"><source src="<?php echo URL . 'public/vid/nosleep.mp4'; ?>" /></video ></div>
	<div id="sleepSlideshow"></div>
	<div class="playbook">
		<div class="content">

