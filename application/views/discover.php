<script>
	$(document).ready(function($) {
		discover();
	});
</script>
<div id='spot-pop'>
    <div id='spotlight-header'>
        <div id="spot-header-info">
            <div id="spot-title">CHICKEN WINGS</div>
            <div id="spot-bar"></div>
            <div id="spot-price">9.99</div>
            <div id="spot-quit">X</div>
        </div>
    </div>
    <div id="spot-pic"></div>
    <div id="spot-info">
        <p id="spot-msg">Our legendary chicken wings! Choose your flavour: honey / garlic / hot / sweet / suicide</p>
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
			<table class="feature-list">
			<tr>
				<?php 
					foreach ($items['hot']['items'] as $item) {
				?>
				<td>
					<div id="feat-thumb<?php echo $item['id']; ?>"  class="feature-item">
						<div class="feature-title">
							<span id="feature-name"><?php echo strtoupper($item['name']); ?><br><?php echo $item['korean_name']; ?></span>
						</div>
						<div class="feature-name-overlay"></div>
					</div>
				</td>
				<? } ?>
			</tr>
		</table> 
	</div>	
</div>	