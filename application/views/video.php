<script>
	$(document).ready(function() {	
		video(<?php echo json_encode($videos); ?>);
	});
</script>
	<!-- AREA FOR VIDEO -->
	<div id="video_area">
		<video id="video"  width="1024" height="600" autoplay="true" src=""></video>
	</div>
	<!-- START VIDEO MENUS -->
	<div id="video_menu">
	<div id="video_title">
		<span id="video_name"></span>
		<br>
		<span id="video_author"></span>
	</div>	
	<div id="btn_video_home">
		<img class="homeLink" src="<?php echo URL . 'public/img/common/btn_home.png'; ?>">
	</div>

	<div id="btn_video_next">
		<img id="next" src="<?php echo URL . 'public/img/video/btn_next.png'; ?>">
	</div>
	<div id ="video_navbar"></div>	
</div>

