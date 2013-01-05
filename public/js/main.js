//var sleep_timer = setTimeout(function() { sleep();}, 5000);

//reset variables
var touch_count = 0;
var activate = 0;
var touch_try = 0;

function reset(touch){

	touch_count += touch;
	touch_try++;

	// activation numbers - FHM
	if(touch_count == 6 || touch_count == 9 || touch_count == 11){
		activate++;
	}

	// after fourth step, check if all activation numbers have been hit - FHM
	if(touch_try == 3){
		if(touch_count == 11 && activate == 3){
			alert("unlocked");
		}
	}
}

$(document).ready(function() {
	$(".homeLink").click(function(){
		$("body").load("home");
	});
});

function home(){

	$("#menuLink").click(function(){
		$("body").load("menu");
	});

	$("#gameLink").click(function(){
		$("body").load("game");
	});

	$("#videoLink").click(function(){
		$("body").load("video");
	});
}

//put the app to sleep mode after a certain time has elapsed - FHM
function sleep(){

	$('#sleepSlideshow').show(function(){

		 var old_timer = sleep_timer;
		 clearTimeout(sleep_timer);
		 var pic1 = URL + 'public/img/menu/Dishes/02.jpg';
		 var pic2 = URL + 'public/img/menu/Dishes/03.jpg';

		$(function() {
		    $('#sleepSlideshow').crossSlide({
		      sleep: 2,
		      fade: 0.1
		    }, [
		      { src: pic1 },
		      { src: pic2 }
		    ])
		});

		$(this).click(function(event) {
			$(this).hide();	
			setTimeout(function() { sleep();}, 5000);
		});
	});
}

function menu(menus, cart){

	$('#selectedItem').click(function(event) {
		alert('d');
	});

	// counter for grabIt function - FHM
	var cart_status = "hidden";
	var user_cart = cart;
	var basket = new Array();	

	$(".menuList").each(function(event) {

		$(this).click(function(event) {

			$(this).fadeTo(200, 0.3, function()
			{
				// get id of currently selected menu  FHM
				var current_menu = $('.menuSelected').attr('id');
				var current_id = '#' + current_menu;

				// deselect current menu and change header - FHM
				$(current_id).removeClass('menuSelected');
				$("> img", current_id).attr("src", URL + "public/img/menu/header_menu_notselected.png");
				$(current_id).css("background-color", "");
				
				// select new menu and change header - FHM
				$(this).addClass('menuSelected');
				$("> img",this).attr("src", URL + "public/img/menu/header_menu_selected.png");
				$(this).css("background-color", "rgba(0,0,0,0.8)");

				// get new menu_id and populate submenu - FHM
				var new_id = $(this).attr('id').substring(4);
				populateSubMenu(new_id);

				// select first item in category - FHM
				$(".subMenuList tr td:first").trigger('click');

			}).fadeTo(200, 1);
		});
	});

	$(".items").live("click", function(){

		var item_id = $(this).attr("value");
		var menu_id = $(".menuSelected").attr("id").substring(4);
		var item_pic = URL + 'public/img/menu/dishes/' + menus[menu_id].items[item_id].big_pic;
		var item_pos = $(this).position();
		var item_width = $(this).css("width");
		var item_padding_right = $(this).css("padding-right");
		var item_padding_left = $(this).css("padding-left");
		var box_size = parseInt(item_width) + parseInt(item_padding_left) + parseInt(item_padding_right) - 27;

		// fade in the item picture - FHM
		changePicture(item_pic);						

		// slide the selected item box - FHM
		$('#selectedItem').animate({ left: item_pos.left, width: box_size},500, function(){

			$('.itemName').html(menus[menu_id].items[item_id].name.toUpperCase()).attr("value", item_id);
	 		$('.itemKorean').html(menus[menu_id].items[item_id].korean_name);
			$('.itemDescription').html(menus[menu_id].items[item_id].description);
			$('.itemPrice').html(menus[menu_id].items[item_id].price);
		});

	});

	function changePicture(pic_path){

		var status = $("#bckgdImg2").css('display');

	 	if(status == 'none'){

	 		var index = $("#bckgdImg1").css('z-index');
	 		var new_index = index - 1;

	 		$("#bckgdImg2").css("z-index", new_index);
			$("#bckgdImg2").css('display', 'inline');
			$("#bckgdImg2").attr("src", pic_path);
			$("#bckgdImg1").fadeOut(1000);
		
	 	}else{

	 		var index = $("#bckgdImg2").css('z-index');
	 		var new_index = index - 1;

	 		$("#bckgdImg1").css("z-index", new_index);
	 		$("#bckgdImg1").css('display', 'inline');
	 		$("#bckgdImg1").attr("src", pic_path);
			$("#bckgdImg2").fadeOut(1000);
	 	}	
	}

	function populateSubMenu(menu_num){

		// clear menu
		$(".items").each(function(event) {
		     $(this).remove();
		});

		var menu_length = menus[menu_num].items.length - 1;

		var m = menus[menu_num].items;

		for (var key in menus[menu_num].items)
		{
			var name = menus[menu_num].items[key].name;
			var menu_item_id = menus[menu_num].items[key].id;
			var korean_name = menus[menu_num].items[key].korean_name;
			var id = key + 1;
			var item = "<td id='item" + id + "' class='items' value='" + menu_item_id + "'><span>" + 
						name.toUpperCase() + "</span><br>" + "<span>" + korean_name + "</span></td>";

			$(".subMenuList table tr").append(item);
		}
	}	
	
	// display first menu - FHM
	$("#menu4").trigger('click');


	// Show cart, add item, and close
	$("#grabIt").click(function(){

		var selected_item = $(".itemName").val();
		var selected_item_name = $(".itemName").html();

		// animate the cart when btn is pushed - FHM
		$("#cartTab").animate({opacity: "+=1"}, 500, function(){
			$(this).animate({opacity: "-=0.50"}, 500);
			$("#cartTab").animate({opacity: "+=1"}, 500, function(){
			$(this).animate({opacity: "-=0.50"}, 500);
			});
		});

		// btn pressed - FHM
		$(this).attr("src", URL  + "public/img/menu/btn_grab_pressed.png");	
		setTimeout(function() { $("#grabIt").attr("src", URL  + "public/img/menu/btn_grab.png");}, 100);

		addItem(selected_item, selected_item_name, function(){
			// unpress button - FHM
			
		});
	});

	// inserts item into a user's cart - FHM
	function addItem(id, name, callback){

		if(id < 10){
			id = "0"+ id;
		}

		var item_img =  "<img class='smallPicItem' width='158px' height='110px' id='" + id + "' src='" + URL + "public/img/menu/dishes/" + id  + ".jpg'>";
		var del_img = "<img class='cartDeleteItem' id='" + id + "' src='" + URL + "public/img/menu/cart/btn_delete.png'>";
		var item_name = "<div class='cartName' id='cart" + name + "'>" + name + "</div>";
		
		// insert new pic and item - FHM
		$("#cartItems tr").append("<td>" + item_img + del_img + item_name + "</td>");
		$("#test").fadeIn(1000, function(){
			callback();	
		});

		basket.push(id);
	}
	
	// add or edit cart - FHM
	$("#cartAction").click(function(event){
		
		// get item count and status of order - FHM
		var item_count = $("#cartItems td").length;
		var waiting_for_server = $("#waitForServer").css("display");
		
		if(waiting_for_server == "none"){
			if(item_count != 0){
				
				// show "waiting for server"  - FHM
				$(this).attr("src",URL + "public/img/menu/cart/btn_edit.png");
				$("#grabIt").css("z-index", "1");
				$("#cartTab").hide();
				$("#cart").css("z-index", "2");
				$("#waitForServer").show();

			}else{
				alert("Uh Oh! You forgot to add an item.");
			}
		}else{

			// abort "waiting for server"  - FHM
			$(this).attr("src",URL + "public/img/menu/cart/btn_cart_ready.png");
			$("#grabIt").css("z-index", "2");
			$("#cartTab").show();
			$("#cart").css("z-index", "1");
			$("#waitForServer").hide();
		}
	});

	// done button pressed, pops in and out - FHM
	$("#waitForServerDone").click(function(event) {
		
		$(this).attr("src", URL + "public/img/menu/cart/btn_done_pressed.png");

		setTimeout(function()
		{
			$("#waitForServerDone").attr("src", URL + "public/img/menu/cart/btn_done.png");

			setTimeout(function(){
				// Store cart in session variable - Need to do - FHM
				var answer = confirm("Finished ordering?");

				// redirect to home page - FHM
				if(answer == true){
					
					var url = URL + 'menu/addToCart/d/';

					$.post(url, {cart: basket}, function(data, textStatus, xhr) {
					  	$("body").load("home");
					});
				}

			},200);

		}, 200);
	});

	$("#cartTab").click(function(event) {
		if(cart_status == "hidden"){
			$("#cart").animate({bottom: "-=140"}, 1000);
			cart_status = "showing";
		}else if(cart_status == "showing"){
			$("#cart").animate({bottom: "+=140"}, 1000);
			cart_status = "hidden";
		}
	});

	// remove item from cart - FHM
	$(".cartDeleteItem").live('click', function(event) {
		
		var item_id = "#" + $(this).attr("id");

		removeItem(item_id, function(){
			
			$(item_id).parent().remove();	
		});
	});
		
	function removeItem(id, callback){
		basket.pop(id);
		callback();
	}	
}

function video(videos){

	// play random video when video ends, make button clickable and control video with click - FHM

	var currentVideo = document.getElementById("video");
	
	$(currentVideo).bind('ended', function(event) {
		showRandomVideo();
	});
  
	var previous_num = 0;
	var status = 'play';

	showRandomVideo();	

	$("#next").click(function(event) {
		showRandomVideo();	
	});

	$(currentVideo).click(function(event) {
		if(status == 'play'){
			currentVideo.pause();
			$("#video_menu").fadeIn();
			status = 'stop';
		}else if(status == 'stop'){
			currentVideo.play();
			$("#video_menu").fadeOut();
			status = 'play';
		}		
	});

	// displays a random video from list - FHM
	function showRandomVideo(){

		// reset status for new video - FHM
		status = 'play';

		// show menu if hidden (occurs when playing next video auto) - FHM
		if($("#video_menu").css("display") != "inline"){
			$("#video_menu").fadeIn();
		}

		var random_num = Math.floor(Math.random()*(videos.length));

		// make sure our new random number is not the same as last one
		while(previous_num == random_num){
			random_num = Math.floor(Math.random()*(videos.length));
		}

		previous_num = random_num;

		var vid_url = URL + 'public/vid/' + videos[random_num].path;

		$(currentVideo).attr("src", vid_url);
		$("#video_name").html( videos[random_num].name);
		$("#video_author").html( videos[random_num].author);
		
		setTimeout(function() {$("#video_menu").fadeOut();}, 4000);
	}
}