<script>
	discover(<?php echo json_encode($items); ?>);
</script>
<div class='spot-pop'>
    <div class='spot-header'>
        <div class="spot-header-info">
            <div class="spot-title"></div>
            <div class="spot-quit"></div>
        </div>
    </div>
    <img class="spot-pic" src=""> 
    <div class="spot-info">
        <p class="spot-msg"></p>
         <div class="spot-price"></div>
    </div>
</div>
<div id="discover-area">
	<div id="discover-promo">
		<table class="promo-list">
			<tr>
				<td>
					<div id="spotlight-about-<?php echo $items['about']['items'][0]['id']; ?>" class="discover">
						<span class="promo-title" id="promo-title-left"><?php echo strtoupper($items['about']['items'][0]['name']); ?></span>
						<div id="about" class="promo-ribbon">
							<img src="<?php echo URL . 'public/img/discover/ribbon-about.png'; ?>">
						</div>	
						<div class="promo-thumb-overlay"></div>
						<div id="about" class="promo-pic"><img src="<?php echo URL . 'public/img/discover/spotlight/' . $items['about']['items'][0]['small_pic']; ?>"></div>
						<div class="promo-name-overlay"></div>
				
					</div>
				</td>
				<td>
					<div id="spotlight-notice-<?php echo $items['notice']['items'][0]['id']; ?>" class="discover">
						<span class="promo-title" id="promo-title-center"><?php echo strtoupper($items['notice']['items'][0]['name']); ?></span>
						<div id="notice" class="promo-ribbon">
							<img src="<?php echo URL . 'public/img/discover/ribbon-notice.png'; ?>">
						</div>	
						<div class="promo-thumb-overlay"></div>
						<div id="notice" class="promo-pic"><img src="<?php echo URL . 'public/img/discover/spotlight/' . $items['notice']['items'][0]['small_pic']; ?>"></div>
						<div class="promo-name-overlay"></div>	
					</div>
				</td>
				<td>
					<div id="spotlight-chef's pick-<?php echo $items['chef\'s pick']['items'][0]['id']; ?>" class="discover">
						<span class="promo-title" id="promo-title-right"><?php echo strtoupper($items["chef's pick"]['items'][0]['name']); ?></span>
						<div id="chef" class="promo-ribbon">
							<img src="<?php echo URL . 'public/img/discover/ribbon-chef.png'; ?>">
						</div>	
						<div class="promo-thumb-overlay"></div>
						<div id="chef" class="promo-pic"><img src="<?php echo URL . 'public/img/discover/spotlight/' . $items['chef\'s pick']['items'][0]['small_pic']; ?>"></div>
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
					foreach ($items['hot']['items'] as $item) {
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
</div>	