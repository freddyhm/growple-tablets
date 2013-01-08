/* GLOGBAL VARIABLES */

var touch_count = 0; // reset global vars
var activate = 0; 	// reset global vars
var touch_try = 0; 	// reset global vars

var basket = new Array(); // menu global vars
var user_basket = {};	// menu global vars
var sleep_timer = "";	// sleep global vars

var bask_item_id = 0; // basket global var

//activate timer - FHM
activateSleepTimer();

// click is the main activity to derive idle user time or not so reset timer if click - FHM
document.addEventListener('click', function(e) {
	clearTimeout(sleep_timer);
	activateSleepTimer();
}, true);

// list of global functions - FHM
function activateSleepTimer(){
	sleep_timer = setTimeout(function() {sleep();}, 3000);
}

//put the app to sleep mode after a certain time has elapsed - FHM
function sleep(){

	// sleep except for video, has own implementation - FHM
	if(document.getElementById("video") == null || document.getElementById("video").paused == true){
	
		$('#sleepSlideshow').show(function(){

			 var pic1 = URL + 'public/img/sleep/slide1.jpg';
			 var pic2 = URL + 'public/img/sleep/slide2.jpg';
			 var pic3 = URL + 'public/img/sleep/slide3.jpg';
			 var pic4 = URL + 'public/img/sleep/slide4.jpg';
			 var pic5 = URL + 'public/img/sleep/slide5.jpg';

			$(function() {
			    $('#sleepSlideshow').crossSlide({
			      sleep: 4,
			      fade: 0.1
			    }, [
			      { src: pic1 },
			      { src: pic2 },
			      { src: pic3 },
			      { src: pic4 },
			      { src: pic5 }
			    ])
			});

			$(this).click(function(event) {
				$(this).hide();	
			});
		});
	}else{

	}
}

// list of functions according to main pages - FHM
function home(){

	var appCache = window.applicationCache;
	
	// on checking for both refresh and loading	
	$(appCache).bind('checking', function(event) {
		$("#loadPage").show();
	});

	// when browser gets refreshed - FHM
	$(appCache).bind('noupdate', function(event) {
		$("#load_pic").hide();
			$("#start_screen").click(function(event) {
				$("#loadPage").fadeOut(1000);
		 });
	});

	// when cache finishes - FHM
	$(appCache).bind('cached', function(event) {
		// first load 
		$("#load_pic").fadeOut(100, function(){
	  		$("#start_screen").click(function(event) {
				$("#loadPage").fadeOut(1000);
	  		});
		});
	});

	$(document).ready(function() {	
		$("#menuLink").click(function(){
			$("body").load(URL + "menu");
		});

		$("#gameLink").click(function(){
			$("body").load(URL + "game");
		});

		$("#videoLink").click(function(){
			$("body").load(URL + "video");
		});

		$("#menu_intmenu").click(function(){
			reset(3);
		});

		$("#menu_games").click(function(){
			reset(6);
		});

		$("#menu_videos").click(function(){
			reset(2);
		});
	});

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

				// display loading page - FHM
				$("#loadPage").show(function(){

					var url = URL + "home/reset/d/";

					// call server to reset user - FHM
					$.post(url, function(data) {
					  	$("#load_pic").fadeOut(100, function(){
					  		$("#start_screen").click(function(event) {
								$("#loadPage").fadeOut(1000);				  		
					  		});
					  	});
					});
				});
			}

			//reset variables
			touch_count = 0;
			activate = 0;
			touch_try = 0;
		}
	}
}

function menu(menus, user_basket){

	$("#menuHome").click(function(){
		$.post(URL + 'menu/saveBasket/d/', {user_basket: basket});
		$("body").load(URL + "home");
		$.post(URL + 'home/stepOut');
	});

	// counter for grabIt function - FHM
	var cart_status = "hidden";

	if(user_basket != ""){
    	fillCart(user_basket);
    }


	function fillCart(basket){
		//function addItem(id, name, menu_name, push){

		basket.forEach(function(entry){
			addItem(entry[0], entry[1], entry[2], "no");
		});
	}

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

				// move scroll bar to first element - FHM
				$(".subMenu").animate({ scrollLeft: 0 }, "slow");

			}).fadeTo(200, 1);
		});
	});

	$(".items").live("click", function(){

		var folder = '/dishes/';
		var item_id = $(this).attr("value");
		var menu_id = $(".menuSelected").attr("id").substring(4);
		
		// set proper image folder depending on menu - FHM
		if(menu_id == 10){
			folder = '/drinks/';
		}else if (menu_id == 11){
			folder = '/beer/';
		}else if (menu_id == 12){
			folder = '/combo/';
		}

		var item_pic = URL + 'public/img/menu' + folder + menus[menu_id].items[item_id].big_pic;
		var item_pos = $(this).position();
		var item_width = $(this).css("width");
		var item_padding_right = $(this).css("padding-right");
		var item_padding_left = $(this).css("padding-left");
		var box_size = parseInt(item_width) + parseInt(item_padding_left) + parseInt(item_padding_right) - 27;

		var opac1 = $("#bckgdImg1").css('opacity');
		var opac2 = $("#bckgdImg2").css('opacity');

		if(opac1 == 1 && opac2 == 1){

			// fade in the item picture - FHM
			changePicture(item_pic);

			// slide the selected item box - FHM
			$('#selectedItem').animate({ left: item_pos.left, width: box_size},500, function(){
	
				$('.itemName').html(menus[menu_id].items[item_id].name.toUpperCase()).attr("value", item_id);
		 		$('.itemKorean').html(menus[menu_id].items[item_id].korean_name);
				$('.itemDescription').html(menus[menu_id].items[item_id].description);
				$('.itemPrice').html(menus[menu_id].items[item_id].price);
			});				
		}
	});

	function changePicture(pic_path){

		var status = $("#bckgdImg2").css('display');

	 	if(status == 'none'){

	 		var index = $("#bckgdImg1").css('z-index');
	 		var new_index = index - 1;

	 		$("#bckgdImg2").css("z-index", new_index);
			$("#bckgdImg2").css('display', 'inline');
			$("#bckgdImg2").attr("src", pic_path);
			$("#bckgdImg1").fadeOut(800);
		
	 	}else{

	 		var index = $("#bckgdImg2").css('z-index');
	 		var new_index = index - 1;

	 		$("#bckgdImg1").css("z-index", new_index);
	 		$("#bckgdImg1").css('display', 'inline');
	 		$("#bckgdImg1").attr("src", pic_path);
			$("#bckgdImg2").fadeOut(800);
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
		var selected_menu_name = $(".menuSelected .menuName").html().toLowerCase();

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

		addItem(selected_item, selected_item_name, selected_menu_name, 'yes');
		var last_item = $("#cartItems tr td:last").position();
		$("#cartArea").animate({ scrollLeft: last_item.left}, "slow");
	});

	// inserts item into a user's cart - FHM
	function addItem(id, name, menu_name, push){

		if(push == 'yes'){
			if(id < 10){
				id = "0"+ id;
			}
		}

		var item_desc = new Array();
		item_desc[0] = id;
		item_desc[1] = name;
		item_desc[2] = menu_name;

		basket.push(item_desc);

		var del_id = "cart_" + bask_item_id;

		if(menu_name == 'appetizers' || menu_name == 'soup &amp; noodle'){
			menu_name = 'dishes';
		}

		var item_img =  "<img class='smallPicItem' width='158px' height='110px'  src='" + URL + "public/img/menu/" + menu_name + "/" + id  + ".jpg'>";
		var del_img = "<img class ='cartDeleteItem' value='" + id + "' id='" + del_id + "' src='" + URL + "public/img/menu/cart/btn_delete.png'>";
		var item_name = "<div class='cartName' id='cart" + name + "'>" + name + "</div>";

		del_id = "#" + del_id;
		
		// insert new pic and item - FHM
		$("#cartItems tr").append("<td>" + item_img + del_img + item_name + "</td>");
		$("#test").fadeIn(1000, function(){
			
		});

		bask_item_id++;

		// remove item from cart - FHM
		$(del_id).click(function(){

			var item_id = $(this).attr("value");
			var cart_id = "#" + $(this).attr("id");

			removeItem(item_id);

			$(cart_id).parent("td").remove();
		});
	}

	function removeItem(id){
		for (var i = 0; i < basket.length; i++) {
			if(basket[i][0].indexOf(id) != -1){
				basket.splice(i,1);
				break;
			}
		};
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
					  	$("body").load(URL + "home");
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


}

function video(videos){
	
	// play random video when video ends, make button clickable and control video with click - FHM
	var currentVideo = document.getElementById("video");
	
	$(currentVideo).bind('ended', function(event) {
		showRandomVideo();
	});
  
	var previous_vid = new Array(0, 0 ,0 ,0 ,0 ,0);
	var previous_position = 0;
	var status = 'play';

	showRandomVideo();	

	$("#videoHomeLink").click(function(){
		$("body").load(URL + "home");
	});

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

		// make sure our new random number is not the same as last five ones - FHM
		while(previous_vid[0] == random_num || previous_vid[1] == random_num || previous_vid[2] == random_num || previous_vid[3] == random_num || previous_vid[4] == random_num || previous_vid[5] == random_num || previous_vid[6] == random_num){
			random_num = Math.floor(Math.random()*(videos.length));
		}

		// assign random num to position of array - FHM
		// position of videos, starts overwriting from the start when array is full - FHM
		previous_vid[previous_position] = random_num;

		// make sure previous position stays lower than array indexes - FHM 
		if(previous_position != previous_vid.length - 1){
			previous_position++;	
		}else{
			previous_position = 0;
		}
			
		var vid_url = URL + 'public/vid/' + videos[random_num].path;

		$(currentVideo).attr("src", vid_url);
		$("#video_name").html( videos[random_num].name);
		$("#video_author").html( videos[random_num].author);
		
		setTimeout(function() {$("#video_menu").fadeOut();}, 4000);
	}
}

function game(){

	$("#gameHomeLink").click(function(){
		$("body").load(URL + "home");
	});

}