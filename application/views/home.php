<!-- START COLUMN1 - INTERACTIVE MENU -->
<script>
	$(document).ready(function(){
		$("#one").click(function(event) {
			$('body').load('menu');
		});
	});
</script>
<div id="menu_intmenu" class="homeSection"></div>	
<div class="sectionLinks" id="btn_intmenu">
		<a href="#" id="one"><img src="<?php echo URL . 'public/img/home/btn_intmenu.png'; ?>"></a>	
		<!-- SLIDESHOW FOR INTERACTIVE MENU MENU -->	
		<div id="slideshow_intmenu"></div>	
</div>	
<!-- END INTERACTIVE MENU -->
<!-- START COLUMN2 - GAMES-->

<div id="menu_games" class="homeSection"></div>	
<div class="sectionLinks" id="btn_games">
		<a href="<?php echo URL . 'game'; ?>"><img src="<?php echo URL . 'public/img/home/btn_game.png'; ?>"></a>	
		<!-- SLIDESHOW FOR GAMES MENU -->	
		<div id="slideshow_games"></div>	
	</div>	
<!-- END GAMES -->
<!-- START COLUMN3 - VIDEOS -->

<div id="menu_videos" class="homeSection"></div>
<div class="sectionLinks" id="btn_videos">
		<a href="<?php echo URL . 'video'; ?>" ><img src="<?php echo URL . 'public/img/home/btn_video.png'; ?>"></a>	
	<!-- SLIDESHOW FOR VIDEOS MENU -->	
	<div id="slideshow_videos"></div>	
</div>		