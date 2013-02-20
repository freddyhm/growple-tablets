<script>
	$(document).ready(function($) {
		menulist();
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
	<div id="cart">
		<div id="cartArea">
		<table id="cartItems">
			<tr></tr>
		</table>
		</div>
		<img id="cartAction" src="<?php echo URL .'public/img/menu/common/cart/btn_cart_ready.png'; ?>">
		<img id="cartRibbon" src="<?php echo URL .'public/img/menu/common/cart/ribbon.png'; ?>">
		<!--<img id="cartList" src="<?php //echo URL .'public/img/menu/common/cart/listview.png'; ?>">-->
		<div id="waitForServer" class="serverActive">
			<div id="waitForServerBckgd" class ="serverActive"></div>
			<img id="LoadingWaiter"  class ="serverActive" src="<?php echo URL .'public/img/menu/common/cart/loading_waiter.gif'; ?>">
			<img id="waitForServerSign"  class ="serverActive" src="<?php echo URL .'public/img/menu/common/cart/btn_wait.png'; ?>">
		</div>
	</div>
	<!-- Left Grid Menu -->
	<div id="listBkgdMenu"></div>

	<div id="listMenuContent">
	<table class="gridtable">

		<tr>
			<th colspan='3'>Appetizer</th>
		</tr>
		<tr>
			<td class="gridMenuItem"><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
			<td class="gridMenuItem"><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
			<td class="gridMenuItem"><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
		</tr>
		<tr>
			<td class="gridMenuItem"><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
			<td class="gridMenuItem"><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
			<td class="gridMenuItem"><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td
		</tr>
		<tr>
			<th colspan='3'>Dishes</th>
		</tr>
		<tr>
			<td class="gridMenuItem"><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
			<td class="gridMenuItem"><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
			<td class="gridMenuItem"><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
		</tr>
		<tr>
			<td><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
			<td><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
			<td><img class="gridPicItem" width="150px" height="150px" src="public/img/menu/common/example2.png">
			<div style="font-size:13px; bottom:72px" class="gridName_notselected" id="grid44">THE DOUBLE FISTED CHEESBURGER</div>
			<div style="font-size:13px; color:#ffb400" class="gridPrice" id="grid44">$12.99</div></td>
		</tr>
	</table>
	</div>


	<!-- Right Info -->
	<div id="listInfoContent">
		<span class="itemNameList">THE DOUBLE FISTED CHEESEBURGER</span>	
		<img id="itemPictureList"src="<?php echo URL .'public/img/menu/common/example.png'; ?>">
		<span class="itemDescriptionList">Indulge in this delicious prime rib burger with our spice rub, bacon, melted cheddar cheese, sundried tomato mayo, lettuce, tomato, red onion and pickle. Served with fries on a fresh organic Grainharvest Breadhouse Farmer bun. Add any of the following for</span>
		<span class="itemPriceList">$12.99</span>
		<img id="grabItList" src="<?php echo URL .'public/img/menu/common/btn_grab.png'; ?>">
	</div>	

</div>