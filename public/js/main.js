/* GLOGBAL VARIABLES */
var touch_count = 0; // reset global vars
var activate = 0; 	// reset global vars
var touch_try = 0; 	// reset global vars

var basket = new Array(); // menu global vars
var user_basket = {};	// menu global vars
var sleep_timer = "";	// sleep global vars

var bask_item_id = 0; // basket global var

// functions to load when page is loaded - FHM
$(document).ready(function($) {

	//activate timer - FHM
	activateSleepTimer();

	// click is the main activity to derive idle user time or not so reset timer if click - FHM
	$(".playbook").click(function(e){ 
		if(e.target.className != 'navLink'){
			activateSleepTimer();
		}else{
			clearTimeout(sleep_timer);
		}
	});
});

// list of global functions - FHM
function activateSleepTimer(){

	sleep_timer = clearTimeout(sleep_timer);
	sleep_timer = setTimeout(function() {sleep(); }, 120000);
}

//put the app to sleep mode after a certain time has elapsed - FHM
function sleep(){

	// sleep slideshow - FHM 
	$('#sleepSlideshow').show(function(){

		 var pic1 = URL + 'public/img/sleep/slide1.jpg';
		 var pic2 = URL + 'public/img/sleep/slide2.jpg';
		 var pic3 = URL + 'public/img/sleep/slide3.jpg';
		 var pic4 = URL + 'public/img/sleep/slide4.jpg';
		 var pic5 = URL + 'public/img/sleep/slide5.jpg';

		$(function() {
		    $('#sleepSlideshow').crossSlide({
		      sleep: 5,
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
			activateSleepTimer();
		});
	});
}

function error(){
	$("#errorHomeLink").click(function(){		
		$(this).attr("src", URL  + "public/img/error/btn_return_pressed.png");	
		// push and unpush - FHM	
		setTimeout(function() { 
			$("#errorHomeLink").attr("src", URL  + "public/img/error/btn_return.png"); 
			setTimeout(function(){$("body").load(URL + "home");},300); 
		}, 100);
	});
}

// list of functions according to main pages - FHM
function home(){

	var appCache = window.applicationCache;
	
	// on checking for both refresh and loading, reset the app - FHM	
	$(appCache).bind('checking', function(event) {
		clearTimeout(sleep_timer);
		$.post(URL + 'mother/reset/d/', function(){
			$("#loadPage").show();
		});
	});

	// when browser gets refreshed after cached - FHM
	$(appCache).bind('noupdate', function(event) {
		$("#load_pic").hide();
	});

	// when cache finishes - FHM
	$(appCache).bind('cached', function(event) {
		// first load 
		$("#load_pic").hide();
	});

	$(appCache).bind('updateready', function(event) {
		// load when manifest changes
		$("#load_pic").hide();
	});

	// make start button clickable even when loading 
	$("#start_screen").live('click', function(event) {
		$("#loadPage").hide();
		activateSleepTimer();
	  });

	$(document).ready(function() {	

		// nav links - FHM
		$("#menuLink").click(function(){
			$(this).attr("src", URL  + "public/img/home/btn_intmenu_pressed.png");
			 setTimeout(function(){ 
			 	$("#menuLink").attr("src", URL  + "public/img/home/btn_intmenu.png");
				$("body").load(URL + "menu");
				$.post(URL + "mother/logStep/d/in/1");
			 }, 300);
		});

		$("#videoLink").click(function(){
			$(this).attr("src", URL  + "public/img/home/btn_video_pressed.png");
			 setTimeout(function(){ 
			 	$("#videoLink").attr("src", URL  + "public/img/home/btn_video.png");
				$("body").load(URL + "video");
				$.post(URL + "mother/logStep/d/in/2");
			 }, 300);
		});


		$("#gameLink").click(function(){
			clearTimeout(sleep_timer);
			$(this).attr("src", URL  + "public/img/home/btn_game_pressed.png");
			 setTimeout(function(){ 
			 	$("#gameLink").attr("src", URL  + "public/img/home/btn_game.png");
				$("body").load(URL + "game");
				$.post(URL + "mother/logStep/d/in/3");
			 }, 300);
		});

		// hidden functions for reset - FM
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
	
	// set new user cycle - FHM
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

					var url = URL + "mother/reset/d/";

					// call server to reset user - FHM
					$.post(url, function(data) {
					  	$("#load_pic").hide();
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
		$(this).attr("src", URL  + "public/img/common/btn_home_pressed.png");
		 setTimeout(function(){ 
		 	$("#menuHome").attr("src", URL  + "public/img/common/btn_home.png");
		 	 setTimeout(function(){ 

		 	 	// save current basket - FHM
		 	 	$.post(URL + 'mother/saveBasket/d/', {user_basket: basket});
			
				// step exit point analytic - FHM
				$.post(URL + 'mother/logStep/d/out/1');
				
				// activity exit point analytic  - FHM
				var last_item = $("#selectedItem").attr("value");
				$.post(URL + "mother/logActivity/out/exit_while_viewing_menu_item/" + last_item);

				$("body").load(URL + "home");
		 	 });
		 }, 300);
	});

	// counter for grabIt function - FHM
	var cart_status = "hidden";
	var touched_cart = false;
	var cart_timer = "";

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
			$("#bckgdImg1").fadeOut(100);
		
	 	}else{

	 		var index = $("#bckgdImg2").css('z-index');
	 		var new_index = index - 1;

	 		$("#bckgdImg1").css("z-index", new_index);
	 		$("#bckgdImg1").css('display', 'inline');
	 		$("#bckgdImg1").attr("src", pic_path);
			$("#bckgdImg2").fadeOut(100);
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

		// after adding all items, add click behavior to all of them - FHM
		$(".items").click(function(){

			var folder = '/dishes/';
			var item_id = $(this).attr("value");
			var menu_id = $(".menuSelected").attr("id").substring(4);
			
			// set proper image folder depending on menu - FHM
			if(menu_id == 10){
				folder = '/drinks/';
			}else if (menu_id == 11){
				folder = '/beer/';
			}else if (menu_id == 12){
				folder = '/combos/';
			}
			var item_pic = URL + 'public/img/menu' + folder + menus[menu_id].items[item_id].big_pic;
			var item_pos = $(this).position();
			var item_width = $(this).css("width");
			var item_padding_right = $(this).css("padding-right");
			var item_padding_left = $(this).css("padding-left");
			var box_size = parseInt(item_width) + parseInt(item_padding_left) + parseInt(item_padding_right) - 27;

			changePicture(item_pic);

			var last_item = $("#selectedItem").attr("value");
			var online = navigator.onLine;

			if(online == true && last_item != undefined){
				$.post((URL + "mother/logActivity/out/viewed_menu_item/" + last_item), function() {
				   $.post(URL + "mother/logActivity/in/viewing_menu_item/" + item_id);
				});
				
			}else{
				// analytic entry (for end time, need to calculate with next point in db) - FHM
				$.post(URL + "mother/logActivity/in/viewing_menu_item/" + item_id);
			}

			// slide the selected item box - FHM
			$('#selectedItem').animate({ left: item_pos.left, width: box_size},500, function(){
	
				$('.itemName').html(menus[menu_id].items[item_id].name.toUpperCase()).attr("value", item_id);
		 		$('.itemKorean').html(menus[menu_id].items[item_id].korean_name);
				$('.itemDescription').html(menus[menu_id].items[item_id].description);
				$('.itemPrice').html(menus[menu_id].items[item_id].price);

				$(this).attr("value", item_id);
			});			
		});
	}	
	
	// display first menu - FHM
	$("#menu4").trigger('click');

	// Show cart, add item, and close
	$("#grabIt").click(function(){

		var selected_item = $(".itemName").val();
		var selected_item_name = $(".itemName").html();
		var selected_menu_name = $(".menuSelected .menuName").html().toLowerCase();

		// btn pressed - FHM
		$(this).attr("src", URL  + "public/img/menu/btn_grab_pressed.png");	
		setTimeout(function() { $("#grabIt").attr("src", URL  + "public/img/menu/btn_grab.png"); }, 100);
		setTimeout(function(){ animateCartAddItem(); }, 100);
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
		
		bask_item_id++;

		// remove item from cart - FHM
		$(del_id).click(function(){

			// flag to stop the cart from going up - FHM
			touched_cart = true;

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

			// clear the timer so cart won't go up - FHM
			cart_timer = clearTimeout(cart_timer);

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

			// pulls cart back up after a short interval - FHM 
			animateCartAddItem();

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
					
					var url = URL + 'mother/addToCart/d/';

					$.post(url, {cart: basket}, function(data, textStatus, xhr) {
					  	$("body").load(URL + "home");
					});
				}

			},200);

		}, 200);
	});

	// area where cart is activated (cart shows/hides)
	$("#cartTabArea").click(function(event) {

		if(cart_status == "hidden"){
			animateCartDown();
		}else if(cart_status == "showing"){
			animateCartUp();			
		}
	});

	// make cart and cart area go up and down - FHM
	function animateCartDown(){
		$("#cart").animate({bottom: "-64"}, 1);
		$("#cartTabArea").css("top", "140px");
		$("#cartTabArea").css("height", "199px");
		cart_status = "showing";
	}

	function animateCartUp(){
		$("#cart").animate({bottom: "76"}, 1);
		$("#cartTabArea").css("top", "0px");
		$("#cartTabArea").css("height", "341px");
		cart_status = "hidden";
	}

	// don't let cart hide if user deletes an item (activity in cart) - FHM
	function animateCartAddItem(){
		animateCartDown();

		if(cart_timer != ""){
			cart_timer = clearTimeout(cart_timer);	
		}

		cart_timer = setTimeout(function(){
			if(!touched_cart){
				animateCartUp();
			}
		}, 2500);

	  touched_cart = false;
	}

}

function video(videos){

	// play random video when video ends, make button clickable and control video with click - FHM
	var currentVideo = document.getElementById("video");
	var previous_vid = new Array(0, 0 ,0 ,0 ,0);
	var previous_position = 0;
	var status = 'play';
	var vid_timer = "";
	var curr_vid_id = "";
	var finished_watching = "no";
		
	// analytics exit point when video ends - FHM
	$(currentVideo).bind('ended', function(event) {
		curr_vid_id = $(this).attr("id");
		$.post(URL + "mother/logActivity/d/out/finished_watching/" + curr_vid_id);
		finished_watching = "yes";
		showRandomVideo();
	});

	// clear sleep timer when video is playing - FHM
	$(currentVideo).bind('play', function(event) {
		clearTimeout(sleep_timer);
	});

	// kick offtimer when video is paused - FHM
	$(currentVideo).bind('pause', function(event) {
		activateSleepTimer();
	});

	showRandomVideo();	

	$("#videoHomeLink").click(function(){
		$("#videoHomeLink").attr("src", URL  + "public/img/common/btn_home_pressed.png");
		 setTimeout(function(){ 
		 	$("#videoHomeLink").attr("src", URL  + "public/img/common/btn_home.png");
		 	 setTimeout(function(){ 

		 	 	// step exit point analytic - FHM
		 	 	$.post(URL + 'mother/logStep/d/out/2');

		 	 	// activity exit point analytic - FHM
		 	 	var curr_vid_id = curr_vid_id = $(currentVideo).attr("id");
		 	 	$.post(URL + "mother/logActivity/d/out/exit_while_watching_video/" + curr_vid_id);

		 	 	$("body").load(URL + "home");
		 	 });
		 }, 300);
	});

	$("#next").click(function(event) {
		$(this).attr("src", URL  + "public/img/video/btn_next_pressed.png");
		 setTimeout(function(){ 
		 	$("#next").attr("src", URL  + "public/img/video/btn_next.png");
		 	 showRandomVideo();
		 }, 300);
	});

	// check menu and video status, stop or play accordingly - FHM
	$(currentVideo).click(function(event) {

		if(status == 'play' && $("#video_menu").css("display") == "none"){
			currentVideo.pause();
			$("#video_menu").show();
			status = 'stop';
		}else if(status == 'stop' && $("#video_menu").css("display") == "inline"){
			currentVideo.play();
			$("#video_menu").hide();
			status = 'play';
		}	
	});

	// displays a random video from list - FHM
	function showRandomVideo(){

		vid_timer  = clearTimeout(vid_timer);

		// reset status for new video - FHM
		status = 'play';

		// show menu if hidden (occurs when playing next video auto) - FHM
		if($("#video_menu").css("display") != "inline"){
			$("#video_menu").show();
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
		var curr_vid_id = curr_vid_id = $(currentVideo).attr("id");
		var online = navigator.onLine;

		// check if online, send analytic exit point - FHM
		if(online == true && curr_vid_id != "video"){
			$.post(URL + "mother/logActivity/d/out/skipped_video/" + curr_vid_id, function(){
				loadVideo(vid_url, random_num);
			});
		}else{
			loadVideo(vid_url, random_num);
		}
	}

	// load url and set name, id, and desc - FHM
	function loadVideo(vid_url, random_num){

		$(currentVideo).attr("src", vid_url);
		$(currentVideo).attr("id", videos[random_num].id);
		$("#video_name").html( videos[random_num].name);
		$("#video_author").html( videos[random_num].author);

		// reset finished watching var - FHM
		finished_watching = "no";

		$.post(URL + "mother/logActivity/d/in/started_watching_video/" + videos[random_num].id);
		
		vid_timer = setTimeout(function() {
			$("#video_menu").hide();
		}, 3000);
	}
}

function game(){

	$("#gameHomeLink").click(function(){		
		$("#gameHomeLink").attr("src", URL  + "public/img/error/btn_return_pressed.png");
		
		// push and unpush - FHM	
		setTimeout(function() { 
			$("#gameHomeLink").attr("src", URL  + "public/img/error/btn_return.png"); 
			setTimeout(function(){
				$("body").load(URL + "home");
				$.post(URL + 'mother/logStep/d/out/3');
			}); 
		}, 100);
	});
}