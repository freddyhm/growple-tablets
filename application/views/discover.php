<script>
	discover(<?php echo json_encode($hot_items); ?>, <?php echo json_encode($info_items); ?>);
</script>
<div id="carousel">
	<div class = 'iosSlider'>
		<div class = 'slider'>
			<div class = 'item' id = 'item1'>
				<div class = 'image'>
					<img src="<?php echo URL . 'public/img/carousel/example.png' ?>">
					<div class='bg'></div>
				</div>
				<div class = 'text'>
					<div class = 'bg'></div>
					<div class = 'title'>
						<span>Touch Me.</span>
					</div>
					<div class = 'desc'>
						<span>Hardware accelerated using CSS3 for supported iOS, Android and WebKit</span>
					</div>
					<div class = 'button'>
						<span>Read More &rsaquo;</span>
					</div>
				</div>
			</div>
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
