<script>
$(document).ready(function() {	
	menu(<?php echo json_encode($menus); ?>);

		$("#menuContent").click(function(){
			$("#touch").hide();
		});
});
</script>
<div id="dialog" title="" style="display:none;">
  <p>Uh Oh! You forgot to add an item.</p>
</div>
<div id="forgotItem" title="" style="display:none;">
  <p><span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>Uh Oh! You forgot to add an item.</p>
</div>
<div id="hiddenPromo"></div>
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
		<div id="waitForServer" class="serverActive">
			<div id="waitForServerBckgd" class ="serverActive"></div>
			<img id="LoadingWaiter"  class ="serverActive" src="<?php echo URL .'public/img/menu/cart/loading_waiter.gif'; ?>">
			<img id="waitForServerSign"  class ="serverActive" src="<?php echo URL .'public/img/menu/cart/btn_wait.png'; ?>">
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
			<img id="touch" src="<?php echo URL .'public/img/menu/btn_touch.png'; ?>">
		</div>
	</div>
	<img id="menuHome" class="navLink" src="<?php echo URL .'public/img/common/btn_home.png'; ?>">
