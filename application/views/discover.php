<script>
	discover(<?php echo json_encode($hot_items); ?>, <?php echo json_encode($info_items); ?>);
</script>
<div id="carousel">
	<div class = 'iosSlider'>
		<div class = 'slider'>
		</div>
		<div class = 'prevButton'></div>
		<div class = 'nextButton'></div>
	</div>
</div>	
<div id="discover-submenu">
	<img id="hot" src="<?php echo URL . 'public/img/discover/btn-hot-on.png'; ?>">
	<img id="specials" src="<?php echo URL . 'public/img/discover/btn-specials-off.png'; ?>">
	<img id="info" src="<?php echo URL . 'public/img/discover/btn-info-off.png'; ?>">
</div>	
