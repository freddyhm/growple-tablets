<script>
 	// Took out document ready since we want the function to trigger before the doc is fully loaded 
	home();	
</script>
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
<div id="homePage">
	<!-- START COLUMN1 - INTERACTIVE MENU -->
	<div id="menu_intmenu" class="homeSection"></div>	
	<div class="sectionLinks" id="btn_intmenu">
		<img id="menuLink" src="<?php echo URL . 'public/img/home/btn_intmenu.png'; ?>">
		<img id="menuLinkPressed" style="float:left; position:absolute; display:none;" src="<?php echo URL . 'public/img/home/btn_intmenu_pressed.png'; ?>">
		<!-- SLIDESHOW FOR INTERACTIVE MENU MENU -->	
		<div id="slideshow_intmenu"></div>	
	</div>	
	<!-- END INTERACTIVE MENU -->
	<!-- START COLUMN2 - GAMES-->

	<div id="menu_games" class="homeSection"></div>	
	<div class="sectionLinks" id="btn_games">
			<img id="gameLink" src="<?php echo URL . 'public/img/home/btn_game.png'; ?>">	
			<!-- SLIDESHOW FOR GAMES MENU -->	
			<div id="slideshow_games"></div>	
	</div>	
	<!-- END GAMES -->
	<!-- START COLUMN3 - VIDEOS -->

	<div id="menu_videos" class="homeSection"></div>
	<div class="sectionLinks" id="btn_videos">
			<img id="videoLink" src="<?php echo URL . 'public/img/home/btn_video.png'; ?>">
		<!-- SLIDESHOW FOR VIDEOS MENU -->	
		<div id="slideshow_videos"></div>	
	</div>		
</div>
