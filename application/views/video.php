<script>
	$(document).ready(function() {	
		//video(<?php echo json_encode($videos); ?>);
	});
</script>
<!-- START CONTAINER -->
<div class="content">
	<!-- AREA FOR VIDEO -->
	<div id="video_area">
		<video id="video"  width="1024" height="650" controls>
		  <source id="vid_src" src="<?php echo URL . 'public/vid/tree.mp4'; ?>" type="video/mp4">
		Your browser does not support the video tag.
		</video>
	</div>
	<!-- START VIDEO MENUS -->
	<div id="video_menu">
	<div id="video_title">
		<span id="video_name"></span>
		<br>
		<span id="video_author"></span>
	</div>	
	<div id="btn_video_home">
		<a href="<?php echo URL . 'home'; ?>"><img src="<?php echo URL . 'public/img/common/btn_home.png'; ?>"></a>
	</div>

	<div id="btn_video_next">
		<img id="next" src="<?php echo URL . 'public/img/video/btn_next.png'; ?>">
	</div>
	<div id ="video_navbar">
	</div>	
</div>

