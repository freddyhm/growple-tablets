<!-- START PAGE WRAPPER -->
<div class="playbook">
	<script>
		$(document).ready(function() {		
			
			// init functions for menu - FHM
			menu();

			// first time interacting w/the menu, show tutorial - FHM
			var virgin = "<?php echo $is_virgin; ?>";
			if(virgin == "No"){

				$("#tutorial").click(function(event) {
					$("#tutorial").hide();
					$("#grabIt").css("z-index", "2");
					<?php Session::set("menu_first_time", "No"); ?>
				});

				$("#tutorial").show();
				$("#grabIt").css("z-index", "1");
			}
		});
	</script>
	<!-- START CONTAINER -->
	<div class="content">
		<div id="tutorial">
			<img id="tutorialIcons" src="<?php echo URL .'public/img/menu/tutorial/tut_intro.png'; ?>">
			<span class="tutorialText" id="tutorialDiscover">Discover</span>
			<span class="tutorialText" id="tutorialPlay">Meet & Play</span>
			<span class="tutorialText" id="tutorialWatch">Watch</span>
			<img id="tutorialSign" src="<?php echo URL .'public/img/menu/tutorial/btn_getstarted.png'; ?>">
			<div id="tutorialBckgd"></div>
		</div>
		<!-- Main Menu (Bottom) -->
		<div id="mainBkgdMenu">
		</div>
		<div id="cart">
			<table id="cartItems">
				<tr></tr>
			</table>
			<img id="cartAction" src="<?php echo URL .'public/img/menu/cart/btn_cart_ready.png'; ?>">
			<div id="waitForServer">
				<div id="waitForServerBckgd"></div>
				<img id="waitForServerSign" src="<?php echo URL .'public/img/menu/cart/btn_wait.png'; ?>">
				<img id="waitForServerDone" src="<?php echo URL .'public/img/menu/cart/btn_done.png'; ?>">
			</div>
			<img id="cartTab" src="<?php echo URL .'public/img/menu/cart_arrow.png'; ?>">
		</div>
		<div class="mainMenu"> 
			<table>
				<tr>
				<?php 
					foreach($menus as $key => $menu) {	

						$key++;
//						if($menu['name'] == 'specials')
//						{
					?>
					<td id="menu<?php echo $key; ?>" class="<?php echo $menu['name']; ?>">
						<img class="menuTabs notSelectedTab" src="<?php echo URL .'public/img/menu/header_menu_notselected.png'; ?>">
						<?php echo strtoupper($menu['name']); ?>
					</td>
					<?php } ?>
					
					<!--
					<td id="<?php//echo $menu['name']; ?>">
						<img class="menuTabs" id="specialTab" src="<?php echo URL .'public/img/menu/header_menu_special.png'; ?>">
						<?php// echo strtoupper($menu['name']); ?>
					</td>
						<?php //}else if($menu['name'] == 'dishes'){ ?>
					<td class="<?php// echo $menu['name']; ?>">
						<img class="menuTabs menuSelected" src="<?php echo URL .'public/img/menu/header_menu_selected.png'; ?>">
						<?php //echo strtoupper($menu['name']); ?>
					</td>
							<?php //}else{ ?>
					<td class="<?php //echo $menu['name']; ?>">
						<img class="menuTabs" class="notSelectedTab" src="<?php echo URL .'public/img/menu/header_menu_notselected.png'; ?>">
						<?php //echo strtoupper($menu['name']); ?>
					</td>
						<?php// } ?>	
					<?php //} ?>
				-->
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
				<img id="grabIt" src="<?php echo URL .'public/img/menu/btn_grab.png'; ?>">
			</div>
		</div>
		<a href="<?php echo URL . 'home'; ?>"><img id="menuHome" src="<?php echo URL .'public/img/common/btn_home.png'; ?>"></a>
	</div>
	<!-- END CONTAINER -->
</div>	
<!-- END PAGE WRAPPER -->