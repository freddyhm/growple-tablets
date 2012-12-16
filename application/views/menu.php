<?php

?>
<!-- START PAGE WRAPPER -->
<div class="playbook">
	<script>
		$(document).ready(function() {		
			menu();
		});
	</script>
	<!-- START CONTAINER -->
	<div class="content">
		<img src="assets/img/menu/special/fishandchips.jpg"  id="contentImg1"/>
		<img src="assets/img/menu/special/fishandchips.jpg"  id="contentImg2"/>
		<!-- Main Menu (Bottom) -->
		<div id="mainBkgdMenu">
		</div>
		<div class="mainMenu"> 
			<table>
				<tr>
				<?php 
						foreach($menus as $menu) {

							if($menu['name'] == 'specials')
							{
					?>
					<td id="<?php echo $menu['name']; ?>"><span class="btnMenuName"><?php echo strtoupper($menu['name']); ?></span></td>
						<?php }else{ ?>
					<td id="<?php echo $menu['name']; ?>"><?php echo strtoupper($menu['name']); ?></td>
						<?php } ?>	
					<?php } ?>
				</tr>
			</table> 
		</div>
		<!-- Sub Menus -->
		<div id="subBkgdMenu"></div>
		<div class="subMenu">
			<div class="subMenuList">
				<table>
					<tr>
						<td id="selectedItem"></td>
						<td id="item1" class="items">ENGLISH STYLE FISH & CHIPS</td>
						<td id="item2" class="items">FRESH CHICKEN TENDERS</td>
						<td id="item3" class="items">CHICKEN STIR FRY</td>
						<td id="item4" class="items">THE NEW YORKER</td>
						<td id="item5" class="items">STEAK SANDWICH</td>
						<td id="item6" class="items">THE PRIME RIB BURGER</td>
						<td id="item7" class="items">BUFFALO CHICKEN WRAP</td>
					</tr>
				</table>
			</div>	
		</div>
		<!-- Item Detail -->
		<div class="itemDetailContainer">
			<div id="itemInfoWrapper">
				<span class="itemName">ENGLISH STYLE FISH & CHIPS</span>
				<span class="ratingStar"></span>
				<span class="ratingInfo">4/5 Stars   |   110 Ratings</span>
				<span class="itemDescription">
					Two pieces of tempura battered haddock cooked until golden and delicious. Served with fries and our tangy cole slaw
				</span>
				<span class="itemPrice">
					$13.49
				</span>	
			</div>
		</div>
	</div>
	<!-- END CONTAINER -->
</div>	
<!-- END PAGE WRAPPER -->