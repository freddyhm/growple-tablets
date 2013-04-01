<script>
	discover(<?php echo json_encode($feature_items); ?>, <?php echo json_encode($spotlight_items); ?>);
</script>

<div id="carousel">
</div>	
<div id="discover-submenu">
</div>	
<!--<div class='pop'>
    <div class='header'>
        <ul class="header-info">
            <li><span class="title"></span></li>
            <li><span class="price"></span></li>
            <li><span class="quit"></span></li>
        </ul>
    </div>
    <img class="pic" src=""> 
    <div class="info">
        <p class="msg"></p>
    </div>
    <div class="heart unlove">
		<img src="<?php echo URL . 'public/img/discover/btn-unheart-unpressed.png'; ?>">
		<div class="count"></div>
	</div>	
    <div class="heart love">
    	<img src="<?php echo URL . 'public/img/discover/btn-heart-unpressed.png'; ?>">
		<div class="count"></div>
	</div>
	<div class="unlove-selection">
		<div id="unlove-overlay"></div>
		<div id="unlove-selection-pop">
			<div id='thanks-unlove'><p>Thanks for the feeback!</p></div>
			<?php 
				foreach ($comments as $comment) {
			?>
				<button class="unlove-selection-btn" id="<?php echo $comment['id']; ?>"><?php echo $comment['name']; ?></button>
			<?php } ?>
				<button class="unlove-selection-btn overlay-close"> Cancel </button>
		</div>	
	</div>

</div>
<div id="discover-area">
	<div id="discover-promo">
		<table class="promo-list">
			<tr>
				<td>
					<div id="spotlight-about-<?php echo $spotlight_items['about']['items'][0]['id']; ?>" class="discover">
						<span class="promo-title" id="promo-title-left"><?php echo strtoupper($spotlight_items['about']['items'][0]['name']); ?></span>
						<div id="about" class="promo-ribbon">
							<img src="<?php echo URL . 'public/img/discover/ribbon-about.png'; ?>">
						</div>	
						<div class="promo-thumb-overlay"></div>
						<div id="about" class="promo-pic"><img src="<?php echo URL . 'public/img/discover/spotlight/' . $spotlight_items['about']['items'][0]['small_pic']; ?>"></div>
						<div class="promo-name-overlay"></div>
				
					</div>
				</td>
				<td>
					<div id="spotlight-notice-<?php echo $spotlight_items['notice']['items'][0]['id']; ?>" class="discover">
						<span class="promo-title" id="promo-title-center"><?php echo strtoupper($spotlight_items['notice']['items'][0]['name']); ?></span>
						<div id="notice" class="promo-ribbon">
							<img src="<?php echo URL . 'public/img/discover/ribbon-notice.png'; ?>">
						</div>	
						<div class="promo-thumb-overlay"></div>
						<div id="notice" class="promo-pic"><img src="<?php echo URL . 'public/img/discover/spotlight/' . $spotlight_items['notice']['items'][0]['small_pic']; ?>"></div>
						<div class="promo-name-overlay"></div>	
					</div>
				</td>
				<td>
					<div id="spotlight-chef's pick-<?php echo $spotlight_items['chef\'s pick']['items'][0]['id']; ?>" class="discover">
						<span class="promo-title" id="promo-title-right"><?php echo strtoupper($spotlight_items["chef's pick"]['items'][0]['name']); ?></span>
						<div id="chef" class="promo-ribbon">
							<img src="<?php echo URL . 'public/img/discover/ribbon-chef.png'; ?>">
						</div>	
						<div class="promo-thumb-overlay"></div>
						<div id="chef" class="promo-pic"><img src="<?php echo URL . 'public/img/discover/spotlight/' . $spotlight_items['chef\'s pick']['items'][0]['small_pic']; ?>"></div>
						<div class="promo-name-overlay"></div>	
					</div>
				</td>
			</tr>
		</table> 
	</div>	
	<div id="discover-featured">
		<div class="discover-divider"></div>
		<img class="discover-icon" src="<?php echo URL . 'public/img/discover/icon_featured.png'; ?>">
		<span class="discover-title">HOT ITEMS</span>	
		<div class="disc-hidden-area" id="disc-hidden-left"></div>
		<div class="disc-hidden-area" id="disc-hidden-center"></div>
		<div class="disc-hidden-area" id="disc-hidden-right"></div>
			<table class="feature-list">
			<tr>
				<?php 
					foreach ($feature_items['hot']['items'] as $item) {
				?>
				<td>
					<div id="feature-hot-<?php echo $item['id']; ?>"  class="discover">
						<img id="feature-pic" src="<?php echo URL . 'public/img/discover/feature/' . $item['small_pic']; ?>">
						<div class="feature-title">
							<span id="feature-name"><?php echo strtoupper($item['name']); ?></span>
							<br>
							<span id="feature-desc"><?php echo $item['korean_name']; ?></span>
						</div>
						<div class="feature-name-overlay"></div>
					</div>
				</td>
				<? } ?>
			</tr>
		</table> 
	</div>	
</div>	-->