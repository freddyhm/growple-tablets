<script>
	discover(<?php echo json_encode($hot_items); ?>, <?php echo json_encode($info_items); ?>,<?php echo json_encode($specials_items) ?>, <?php echo json_encode($comments); ?>);
</script>
<div id="carousel">
	<div class='iosSlider'>
		<div class='slider'>
		</div>
	</div>
	<div class='prevButton'></div>
	<div class='nextButton'></div>
</div>	
<div id="discover-submenu">
	<img class="submod" id="hot" src="<?php echo URL . 'public/img/discover/btn-hot-on.png'; ?>">
	<img class="submod" id="specials" src="<?php echo URL . 'public/img/discover/btn-specials-off.png'; ?>">
	<img class="submod" id="info" src="<?php echo URL . 'public/img/discover/btn-info-off.png'; ?>">
</div>	
