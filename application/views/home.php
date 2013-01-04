<script>

	$(document).ready(function() {	
		
		$("#menuLink").click(function(){
			$("body").load("menu");
		});

		$("#gameLink").click(function(){
			$("body").load("game");
		});

		$("#videoLink").click(function(){
			$("body").load("video");
		});
	});

</script>
<!-- START COLUMN1 - INTERACTIVE MENU -->
<div id="menu_intmenu" class="homeSection"></div>	
<div class="sectionLinks" id="btn_intmenu">
		<img id="menuLink" src="<?php echo URL . 'public/img/home/btn_intmenu.png'; ?>">
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