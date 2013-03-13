<script>
	$(document).ready(function($) {
		discover(<?php echo json_encode($items); ?>);
	});
</script>
<div class='spot-pop'>
    <div class='spot-header'>
        <div class="spot-header-info">
            <div class="spot-title">CHICKEN WINGS</div>
            <div class="spot-bar"></div>
            <div class="spot-price">9.99</div>
            <div class="spot-quit">X</div>
        </div>
    </div>
    <div class="spot-pic"></div>
    <div class="spot-info">
        <p class="spot-msg">Our legendary chicken wings! Choose your flavour: honey / garlic / hot / sweet / suicide</p>
    </div>
</div>
<div id="discover-area">
	<div id="discover-promo">
		<table class="promo-list">
			<tr>
				<td>
					<div id="thumb1" class="promo-item">
						<span class="promo-title" id="promo-title-left"><?php echo strtoupper($items['about']['items'][0]['name']); ?></span>
						<div class="promo-lock-overlay"></div>
						<div class="promo-thumb-overlay"></div>
						<div class="promo-name-overlay"></div>
				
					</div>
				</td>
				<td>
					<div id="thumb2" class="promo-item">
						<span class="promo-title" id="promo-title-center"><?php echo strtoupper($items['notice']['items'][0]['name']); ?></span>
						<div class="promo-thumb-overlay"></div>
						<div class="promo-name-overlay"></div>	
					</div>
				</td>
				<td>
					<div id="thumb3" class="promo-item">
						<span class="promo-title" id="promo-title-right"><?php echo strtoupper($items["chef's pick"]['items'][0]['name']); ?></span>
						<div class="promo-thumb-overlay"></div>
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
					<div id="feat-thumb<?php echo $item['id']; ?>"  class="feature-item">
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