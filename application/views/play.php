<script>
	$(document).ready(function() {	
		play(<?php echo json_encode($play_items); ?>, "<?php echo Session::get('venue'); ?>");
	});
</script>
<div id="play-area">
	<video id="play-item" width="1024" height="600" autoplay="true" src=""></video>
</div>
<!-- START VIDEO MENUS -->
<div id="play-menu">
	<div id="play-title">
		<span id="play-name"></span>
		<br>
		<span id="play-author"></span>
	</div>	
	<div id="btn-play-next">
		<img id="next" src="<?php echo URL . 'public/img/play/btn-next.png'; ?>">
	</div>
</div>

