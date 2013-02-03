<script>
$(document).ready(function() {	


	menu(<?php echo json_encode($menus); ?>, "<?php echo $venue; ?>");

		$("#menuContent").click(function(){
			$("#touch").hide();
		});
});
</script>
<!-- modal content -->
<div id="basic-modal-content">
	<h3>Uh Oh! You forgot to add an item.</h3>
</div>
<!-- preload the images -->
<div style='display:none'>
	<img src="<?php echo URL . 'public/img/confirm/x.png' ?>"/>
</div>
<div id="hiddenPromo"></div>
<img src=""  id="bckgdImg1"/>
<img src=""  id="bckgdImg2"/>
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
		<img id="cartAction" src="<?php echo URL .'public/img/menu/common/cart/btn_cart_ready.png'; ?>">
		<img id="cartRibbon" src="<?php echo URL .'public/img/menu/common/cart/ribbon.png'; ?>">
		<div id="waitForServer" class="serverActive">
			<div id="waitForServerBckgd" class ="serverActive"></div>
			<img id="LoadingWaiter"  class ="serverActive" src="<?php echo URL .'public/img/menu/common/cart/loading_waiter.gif'; ?>">
			<img id="waitForServerSign"  class ="serverActive" src="<?php echo URL .'public/img/menu/common/cart/btn_wait.png'; ?>">
		</div>
	</div>
	<div class="mainMenu"> 
		<table>
			<tr>
			<?php 
				foreach($menus as $menu) {	
				?>
				<td class="menuList" id="menu<?php echo $menu['id']; ?>" class="<?php echo $menu['name']; ?>">
					<img class="menuTabs" src="<?php echo URL .'public/img/menu/common/header_menu_notselected.png'; ?>">
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
			<span class="itemName"></span>
			<span class="itemKorean"></span>
			<span class="itemDescription">
			</span>
			<span class="itemPrice">
			</span>	
			<img id="grabIt" src="<?php echo URL .'public/img/menu/common/btn_grab.png'; ?>">
			<img id="touch" src="<?php echo URL .'public/img/menu/common/btn_touch.png'; ?>">
		</div>
	</div>
	<img id="menuHome" class="navLink" src="<?php echo URL .'public/img/common/btn_home.png'; ?>">
