<script>
$(document).ready(function() {	
	// get basket - FHM  
 	var basket = getBasket();
	menu(<?php echo json_encode($menus); ?>, basket);
});
</script>
<div id="dialog" title="" style="display:none;">
  <p>Uh Oh! You forgot to add an item.</p>
</div>
<div id="dialog-confirm" title="" style="display:none;">
  <p><span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>Finished Ordering?</p>
</div>
<img src="<?php echo URL .'public/img/menu/dishes/02.jpg'; ?>"  id="bckgdImg1"/>
<img src="<?php echo URL .'public/img/menu/dishes/02.jpg'; ?>"  id="bckgdImg2"/>
<div id="menuContent">
	<div id="cartTabArea"></div>
	<!-- Main Menu (Bottom) -->
	<div id="mainBkgdMenu"></div>
	<div id="cart">
		<div id="cartArea">
		<table id="cartItems">
			<tr></tr>
		</table>
		</div>
		<img id="cartAction" src="<?php echo URL .'public/img/menu/cart/btn_cart_ready.png'; ?>">
		<div id="waitForServer">
			<div id="waitForServerBckgd"></div>
			<img id="waitForServerSign" src="<?php echo URL .'public/img/menu/cart/btn_wait.png'; ?>">
		
		</div>
	</div>
	<div class="mainMenu"> 
		<table>
			<tr>
			<?php 
				foreach($menus as $menu) {	
				?>
				<td class="menuList" id="menu<?php echo $menu['id']; ?>" class="<?php echo $menu['name']; ?>">
					<img class="menuTabs" src="<?php echo URL .'public/img/menu/header_menu_notselected.png'; ?>">
					<span class="menuName"><?php echo strtoupper($menu['name']); ?></span>
				</td>
				<?php } ?>
			</tr>
		</table> 
	</div>
	<!-- Sub Menus -->
	<div id="subBkgdMenu"></div>
	<div class="subMenu">
		<div id="selectedItem"></div>
		<div class="subMenuList">
			<table>
				<tr>
				</tr>
			</table>
		</div>	
	</div>
	<!-- Item Detail -->
	<div class="itemDetailContainer"> 
		<div id="itemInfoWrapper">
			<span class="itemName">BULGOGI</span>
			<span class="itemKorean">불고기</span>
			<span class="itemDescription">
				Stir-fried beef, some vegetables, noodles with sweet soy sauce on the sizzling plate, rice
			</span>
			<span class="itemPrice">
				$10.99
			</span>	
			<img id="grabIt" src="<?php echo URL .'public/img/menu/btn_grab.png'; ?>">
		</div>
	</div>
	<img id="menuHome" class="navLink" src="<?php echo URL .'public/img/common/btn_home.png'; ?>">
