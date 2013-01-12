<script>
$(document).ready(function() {	

/*
	// first time interacting w/the menu, show tutorial - FHM
	var virgin = "<?php //echo $is_virgin; ?>";
	
	if(virgin == "Yes"){
		$("#tutorial").click(function(event) {
			<?php //Session::set("menu_first_time", "No"); ?>
			$("#menuContent").show();
			$("#tutorial").hide();
		});
	}else{
		$("#tutorial").hide();
		$("#menuContent").show();
	}
	*/
	// init functions for menu   - FHM
	
	var online = navigator.onLine;
	var basket = "";

	if(online == true){
		$.get(URL + 'mother/getBasket/d', function(data, textStatus, xhr) {
	  	basket = $.parseJSON(data);
	  	menu(<?php echo json_encode($menus); ?>, basket);
		});	

	}else{
		menu(<?php echo json_encode($menus); ?>, basket);
	}
});
</script>
<img src="<?php echo URL .'public/img/menu/dishes/02.jpg'; ?>"  id="bckgdImg1"/>
<img src="<?php echo URL .'public/img/menu/dishes/02.jpg'; ?>"  id="bckgdImg2"/>
<!-- 
<div id="tutorial">
	<img id="tutorialBckgdImg" src="<?php // echo URL .'public/img/menu/tutorial/bg_owl.jpg'; ?>">
	<img id="tutorialIcons" src="<?php //echo URL .'public/img/menu/tutorial/tut_intro.png'; ?>">
	<span class="tutorialText" id="tutorialDiscover">Discover</span>
	<span class="tutorialText" id="tutorialPlay">Meet & Play</span>
	<span class="tutorialText" id="tutorialWatch">Watch</span>
	<img id="tutorialSign" src="<?php //echo URL .'public/img/menu/tutorial/btn_getstarted.png'; ?>">
	<div id="tutorialBckgd"></div>
</div>
-->
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
			<img id="waitForServerDone" src="<?php echo URL .'public/img/menu/cart/btn_done.png'; ?>">
		</div>
		<!-- <img id="cartTab" src="<?php //echo URL .'public/img/menu/cart_arrow.png'; ?>"> -->
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
