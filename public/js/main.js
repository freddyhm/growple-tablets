function home(){

	var pic1 = URL +  'public/img/home/bg_intmenu.jpg';
	var pic2 = URL +  'public/img/home/bg_video.jpg';
	var pic3 = URL +  'public/img/home/bg_game.jpg';

	$('.homeSection').each(function(event) {

		var section_id = "#" + $(this).attr("id");

		$(section_id).crossSlide({
		  fade: 0.1
		}, [
		  {
		    src:  pic1,
		    alt:  'Sand Castle',
		    from: '100% 80% 1x',
		    to:   '100% 0% 1.7x',
		    time: 30
		  }, {
		    src:  pic2,
		    alt:  'Sunflower',
		    from: 'top left',
		    to:   'bottom right 1.5x',
		    time: 30
		  }, {
		    src:  pic3,
		    alt:  'Flip Flops',
		    from: '100% 80% 1.5x',
		    to:   '80% 0% 1.1x',
		    time: 30
		  }
		], function(idx, img, idxOut, imgOut) {
		  if (idxOut == undefined)
		  {
		    // starting single image phase, put up caption
		    $('div.caption').text(img.alt).animate({ opacity: .7 })
		  }
		  else
		  {
		    // starting cross-fade phase, take out caption
		    $('div.caption').fadeOut()
		  }
		});

	});

}


function menu(menus){

	// counter for grabIt function - FHM
	var cart_status = "hidden";

	// menu2 is selected by default &  put special header on 'special' section - FHM
	$("#menu2 img").attr("src", URL + "public/img/menu/header_menu_selected.png").parent().addClass("menuSelected");
	$("#menu2").css("background-color", "rgba(0,0,0,0.8)");
	$("#menu1 img").attr("src", URL + "public/img/menu/header_menu_special.png");

	// Show cart, add item, and close
	$("#grabIt").click(function(){

		var selected_item = $(".itemName").attr("value");

		$("#cartTab").animate({opacity: "+=1"}, 500, function(){
			$(this).animate({opacity: "-=0.50"}, 500);
			$("#cartTab").animate({opacity: "+=1"}, 500, function(){
			$(this).animate({opacity: "-=0.50"}, 500);
			});
		});

		// btn pressed - FHM
		$(this).attr("src", URL  + "public/img/menu/btn_grab_pressed.png");	
			addItem(selected_item, function(){
				// unpress button - FHM
				$("#grabIt").attr("src", URL  + "public/img/menu/btn_grab.png");		
			});

		/*
		Only on first time - FHM
		if(cart_status == "hidden"){
			// show cart - FHM
			$("#cart").animate({bottom: "-=140"}, 1000, function(){

				addItem(1, function(){
					// hide cart - FHM
					$("#cart").delay(1000).animate({bottom: "+=140"}, 1000);
					// unpress button - FHM
					$("#grabIt").attr("src", URL  + "public/img/menu/btn_grab.png");		
				});

			});
		}else if(cart_status == "showing"){

			// need to wait till fix the pics - FHM
			addItem(1, function(){
				// hide cart since it's already showing - FHM
				$("#cart").delay(1000).animate({bottom: "+=140"}, 1000);
				// unpress button - FHM
				$("#grabIt").attr("src", URL  + "public/img/menu/btn_grab.png");			
			});

			//update status - FHM
			cart_status = "hidden";
		}
		*/
	});
	
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
					window.location = URL + "home";
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
		$(item_id).parent().remove();		
	});
		
	// inserts item into a user's cart - FHM
	function addItem(id, callback){

		// take src from cached pic
		var small_pic = '#smallPicItem-' + id;
		var small_src = $(small_pic).attr("src");

		var item_img =  "<img id='" + id + "' src='public/img/menu/cart/btn_edit.png'>";
		var del_img = "<img class='cartDeleteItem' id='" + id + "' src='" + URL + "public/img/menu/cart/btn_delete.png'>";
		
		// insert new pic and item - FHM
		$("#cartItems tr").append("<td>" + item_img + del_img +"</td>");
		$("#test").fadeIn(1000, function(){
			callback();	
		});
	}

	// caching all images by loading them and attaching them to a hidden DOM element - FHM
	/*
	var imageArray = ['assets/img/menu/special/fishandchips.jpg', 
							  'assets/img/menu/special/chickentender.jpg', 
							  'assets/img/menu/special/newyorker.jpg', 
							  'assets/img/menu/special/ribburger.jpg', 
							  'assets/img/menu/special/steaksandwich.jpg', 
							  'assets/img/menu/special/chickenstirfry.jpg',
							  'assets/img/menu/special/buffalochickenwrap.jpg',
							  'assets/img/menu/starter/wings.jpg',
							  'assets/img/menu/starter/antojitos.jpg',
							  'assets/img/menu/starter/nachos.jpg',
							  'assets/img/menu/starter/picklespears.jpg',
							  'assets/img/menu/starter/popcornchicken.jpg',
							  'assets/img/menu/starter/veggieroll.jpg',
							  'assets/img/menu/starter/yamfries.jpg',
							  'assets/img/menu/beer/bud.jpg',
							  'assets/img/menu/beer/corona.jpg',
							  'assets/img/menu/beer/heineken.jpg',
							  'assets/img/menu/beer/miller.jpg',
							  'assets/img/menu/beer/pilsner.jpg',
							  'assets/img/menu/beer/rickards.jpg',
							  'assets/img/menu/beer/sapporo.jpg'
				  			];
				  			*/
 
	// Add hidden element
//	var hidden = $('body').append('<div id="img-cache" style="display:none" />').children('#img-cache');
	 
	 /*
	// Add images to hidden element.
	$.each(imageArray, function (i, val) {
	  $('<img/>').attr('src', val).appendTo(hidden);
	});
*/

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
				//var new_id = $(this).attr('id').substring(4);
				var new_id = 0;
				populateSubMenu(new_id);

			}).fadeTo(200, 1);
		});
	});

	function populateSubMenu(menu_num){

		var menu_length = menus[menu_num].items.length - 1;
		for (var i = 0; i <= menu_length; i++) {			
			var name = menus[menu_num].items[i].name;
			var menu_item_id = menus[menu_num].items[i].id;
			var id = i + 1;
			var item = "<td id='item" + id + "' class='items' value='" + menu_item_id + "'>" + name.toUpperCase() + "</td>";

			$(".subMenuList table tr").append(item);
		}
		
	}

	$(".items").live("click", function(){

		var item_id = $(this).attr("value");
		//var menu_id = $(".menuSelected").attr("id").substring(4);
		var menu_id = 0;
	
		// change background picture
		
		//	changePicture('assets/img/menu/special/fishandchips.jpg');

		// change name and description - FHM
	 	$('.itemName').html(menus[menu_id].items[item_id].name).attr("value", item_id);
		$('.itemDescription').html(menus[menu_id].items[item_id].name);
		$('.itemPrice').html(menus[menu_id].items[item_id].price);
	});
		


	
	$('#item1').click(function(){

//		if(opac1 == 1 && opac2 == 1){

	  	// get name of current menu - FHM
	//  	 var current_menu = $('.menuSelected').attr('id');

		 // change description based on menu selected - FHM

		 /*
		 if(current_menu == 'special'){

		 	changePicture('assets/img/menu/special/fishandchips.jpg');

		 	$('.itemName').html('ENGLISH STYLE FISH & CHIPS');
			$('.itemDescription').html('Two pieces of tempura battered haddock cooked until golden and delicious. Served with fries and our tangy cole slaw');
			$('.itemPrice').html('$13.49');
			
			$('.ratingStar').css('margin', '128px 22px');
			$('.ratingInfo').css('margin', '140px 172px');
			$('.itemDescription').css('margin', '171px 24px');
			$('.itemPrice').css('margin', '280px 93px');

		 }else if(current_menu == 'starter'){

		 	changePicture('assets/img/menu/starter/wings.jpg');

		 	$('.itemName').html('FRONT ROW WINGS');
			$('.itemDescription').html('They made us famous. Your choice of suicide, hot, medium, mild, honey garlic, Cajun, sweet heat and our all new fiery Thai sauce, sweet chilli sauce and Rickard’s dark maple chipotle sauce.');
			$('.itemPrice').html('lLB | $12.99 2LB | $21.99');
			
			$('.ratingStar').css('margin', '104px 22px');
			$('.ratingInfo').css('margin', '117px 172px');
			$('.itemDescription').css('margin', '157px 24px');
			$('.itemPrice').css('margin', '280px 93px');

	 	}else if(current_menu == 'poutine'){


	 		changePicture('assets/img/menu/beer/corona.jpg');

			$('.itemName').html('CORONA');
			$('.itemDescription').html('The unmistakable color, the one-of-a-kind taste, the unparalleled flavor of relaxation.');
			$('.itemPrice').html('$6.99');
			
			$('.ratingStar').css('margin', '104px 22px');
			$('.ratingInfo').css('margin', '117px 172px');
			$('.itemDescription').css('margin', '157px 24px');
			$('.itemPrice').css('margin', '280px 93px');
		}
*/

		// Anim#1: change picture after item is selected, because need to find what button is selected and then display picture - FHM
    	
    	$('#selectedItem').animate({ left:'0',},500);
    });

	$('#item2').click(function(){

		/*

		var opac1 = $("#contentImg1").css('opacity');
		var opac2 = $("#contentImg2").css('opacity');

			
		if(opac1 == 1 && opac2 == 1){

	  	 // get name of current menu - FHM
	  	 var current_menu = $(".menuSelected").attr("id");

		 if(current_menu == "special"){

		 	changePicture('assets/img/menu/special/chickentender.jpg');

		 	$('.itemName').html('FRESH CHICKEN TENDERS');
			$('.itemDescription').html('We take strips of fresh chicken breast and dip them into buttermilk, special seasonings and then cook until golden. Served with plum sauce and fries because anything else wouldn’t be right');
			$('.itemPrice').html('$12.89');
			
			$('.ratingStar').css('margin', '128px 22px');
			$('.ratingInfo').css('margin', '140px 172px');
			$('.itemDescription').css('margin', '171px 24px');
			$('.itemPrice').css('margin', '280px 93px');

		 }else if(current_menu == 'starter'){

		 	changePicture('assets/img/menu/starter/picklespears.jpg');

		    $('.itemName').html('PICKLE SPEARS');
		    $('.itemDescription').html('Lightly breaded and cooked until golden. Served with a ranch dip');
		    $('.itemPrice').html('$7.99');

		    $('.ratingStar').css('margin', '130px 22px');
		    $('.ratingInfo').css('margin', '144px 172px');
		    $('.itemDescription').css('margin', '181px 24px')  ;
		    $('.itemPrice').css('margin', '280px 93px');

	 	}else if(current_menu == 'poutine'){

	 		changePicture('assets/img/menu/beer/heineken.jpg');

			$('.itemName').html('HEINEKEN');
			$('.itemDescription').html('Pale lager beer with 5% alcohol by volume produced by a Dutch brewing company');
			$('.itemPrice').html('$6.99');
			
			$('.ratingStar').css('margin', '128px 22px');
			$('.ratingInfo').css('margin', '145px 172px');
			$('.itemDescription').css('margin', '194px 24px');
			$('.itemPrice').css('margin', '280px 93px');

		}
		*/
		// Anim#2: move selected square and change picture @ same time - FHM
		 $('#selectedItem').animate({
		    left: '140',
		  }, 500);

	});

	$('#item3').click(function(){

		/*
		var opac1 = $("#contentImg1").css('opacity');
		var opac2 = $("#contentImg2").css('opacity');

			
		if(opac1 == 1 && opac2 == 1){

	  	// get name of current menu - FHM
	  	 var current_menu = $('.menuSelected').attr('id');
		

		 // change description based on menu selected - FHM
		 if(current_menu == 'special'){

		 	changePicture('assets/img/menu/special/chickenstirfry.jpg');

		 	$('.itemName').html('CHICKEN STIR FRY');
			$('.itemDescription').html('Marinated grilled breast of chicken served over our delicious eleven vegetable stir fry. Tossed with your choice of sweet chili sauce, teriyaki or spicy Thai sauce. Served on a bed of steamed chow mein noodles');
			$('.itemPrice').html('$15.99');
			
			$('.ratingStar').css('margin', '112px 22px');
			$('.ratingInfo').css('margin', '125px 172px');
			$('.itemDescription').css('margin', '171px 24px');
			$('.itemPrice').css('margin', '289px 93px');

		 }else if(current_menu == 'starter'){

		 	changePicture('assets/img/menu/starter/popcornchicken.jpg');

		    $('.itemName').html('SPICY POPCORN CHICKEN');
			$('.itemDescription').html('Breaded bite size chicken served with your choice of the following sauces: Mild, medium, hot, suicide, honey garlic, Cajun, sweet heat or fiery Thai');
			$('.itemPrice').html('$8.99');

			$('.ratingStar').css('margin', '130px 22px');
			$('.ratingInfo').css('margin', '144px 172px');
			$('.itemDescription').css('margin', '181px 24px');
			$('.itemPrice').css('margin', '277px 93px');

		 }else if(current_menu == 'poutine'){

		 	changePicture('assets/img/menu/beer/miller.jpg');

			$('.itemName').html('MILLER');
			$('.itemDescription').html('Refreshing light beer brewed with a hint of lime and a pinch of salt');
			$('.itemPrice').html('$6.99');
			
			$('.ratingStar').css('margin', '128px 22px');
			$('.ratingInfo').css('margin', '145px 172px');
			$('.itemDescription').css('margin', '194px 24px');
			$('.itemPrice').css('margin', '280px 93px');
		}
	*/
		// Anim#2: move selected square and change picture @ same time - FHM
		$('#selectedItem').animate({
		    left: '288',
		  }, 500);
	});

	$('#item4').click(function(){

		/*

		var opac1 = $("#contentImg1").css('opacity');
		var opac2 = $("#contentImg2").css('opacity');

			
		if(opac1 == 1 && opac2 == 1){

	  	// get name of current menu - FHM
	  	 var current_menu = $('.menuSelected').attr('id');
		// $('.contentMenu').css('background-image', "url('assets/img/bgGrowple.jpg')");

	  	// change description based on menu selected - FHM
		 if(current_menu == 'special'){

		 	changePicture('assets/img/menu/special/newyorker.jpg');

		 	$('.itemName').html('THE NEW YORKER');
			$('.itemDescription').html('Our 1/2 pound of fresh prime rib burger served on a toasted bun topped with beer battered onion rings, roasted garlic aioli, red pepper relish, aged white cheddar as well as fresh lettuce and fresh cut fries.');
			$('.itemPrice').html('$13.99');
			$('.ratingStar').css('margin', '112px 22px');
			$('.ratingInfo').css('margin', '125px 172px');
			$('.itemDescription').css('margin', '171px 24px');
			$('.itemPrice').css('margin', '289px 93px');

		 }else if(current_menu == 'starter'){

		 	changePicture('assets/img/menu/starter/yamfries.jpg');

		    $('.itemName').html('CRISPY YAM FRIES');
			$('.itemDescription').html('Tasty yam fries served with our own special garlic aioli dip');
			$('.itemPrice').html('$7.99');

			$('.ratingStar').css('margin', '130px 22px');
			$('.ratingInfo').css('margin', '144px 172px');
			$('.itemDescription').css('margin', '181px 24px');
			$('.itemPrice').css('margin', '277px 93px');

		 }else if(current_menu == 'poutine'){

		 	changePicture('assets/img/menu/beer/rickards.jpg');

			$('.itemName').html("RICKARD'S");
			$('.itemDescription').html('An English style porter brewed with a hint of maple syrup');
			$('.itemPrice').html('$5.99');
			$('.ratingStar').css('margin', '128px 22px');
			$('.ratingInfo').css('margin', '145px 172px');
			$('.itemDescription').css('margin', '194px 24px');
			$('.itemPrice').css('margin', '280px 93px');
		}

		 */   
		  // Anim#1: change picture after item is selected not during - FHM
		$('#selectedItem').animate({
		    left: '434',
		  }, 500);
	});

	$('#item5').click(function(){

	/*
		var opac1 = $("#contentImg1").css('opacity');
		var opac2 = $("#contentImg2").css('opacity');

			
		if(opac1 == 1 && opac2 == 1){

		
		  	// get name of current menu - FHM
		  	 var current_menu = $('.menuSelected').attr('id');

		  	// change description based on menu selected - FHM
			 if(current_menu == 'special'){

			 	changePicture('assets/img/menu/special/steaksandwich.jpg');
			 	
			 	$('.itemName').html('STEAK SANDWICH');
				$('.itemDescription').html('6 oz. steak grilled the way you liked it and served on a grilled baguette with garlic butter then topped with sautéed mushrooms and onions');
				$('.itemPrice').html('$12.99');
				$('.ratingStar').css('margin', '112px 22px');
				$('.ratingInfo').css('margin', '125px 172px');
				$('.itemDescription').css('margin', '171px 24px');
				$('.itemPrice').css('margin', '289px 93px');

			 }else if(current_menu == 'starter'){

			 	changePicture('assets/img/menu/starter/antojitos.jpg');
				
			    $('.itemName').html('ANTIJITOS');
				$('.itemDescription').html('Sundried tomato tortilla filled with our special spicy blend of cream cheese and diced jalapeño, baked in the oven till soft, hot and golden. Served with a spicy sweet chili dip.');
				$('.itemPrice').html('$8.99');

				$('.ratingStar').css('margin', '104px 22px');
				$('.ratingInfo').css('margin', '117px 172px');
				$('.itemDescription').css('margin', '157px 24px');
				$('.itemPrice').css('margin', '280px 93px');

			 }else if(current_menu == 'poutine'){

			 	changePicture('assets/img/menu/beer/sapporo.jpg');

				$('.itemName').html('SAPPORO');
				$('.itemDescription').html('The aroma of Sapporo Premium Beer is mild, fresh and grainy with a certain sweetness to it');
				$('.itemPrice').html('$7.99');
				$('.ratingStar').css('margin', '128px 22px');
				$('.ratingInfo').css('margin', '145px 172px');
				$('.itemDescription').css('margin', '194px 24px');
				$('.itemPrice').css('margin', '280px 93px');
			}
*/
			// Anim#1: change picture after item is selected not during - FHM
		$('#selectedItem').animate({
		    left: '576',
		  }, 500);
	});

	$('#item6').click(function(){

		/*

		var opac1 = $("#contentImg1").css('opacity');
		var opac2 = $("#contentImg2").css('opacity');

			
		if(opac1 == 1 && opac2 == 1){

	  	// get name of current menu - FHM
	  	 var current_menu = $('.menuSelected').attr('id');

	  	// change description based on menu selected - FHM
		 if(current_menu == 'special'){

		 	changePicture('assets/img/menu/special/ribburger.jpg');
		 	
		 	$('.itemName').html('THE PRIME RIB BURGER');
			$('.itemDescription').html('Fresh ground prime rib grilled to perfection making this the juiciest, burger you have ever tasted. Served on a fresh organic Grainharvest Breadhouse Farmer bun with fresh crisp lettuce, tomato, pickle and Bermuda onion.');
			$('.itemPrice').html('$10.99');
			$('.ratingStar').css('margin', '132px 22px');
			$('.ratingInfo').css('margin', '145px 172px');
			$('.itemDescription').css('margin', '171px 24px');
			$('.itemPrice').css('margin', '299px 93px');

		 }else if(current_menu == 'starter'){

		 	changePicture('assets/img/menu/starter/nachos.jpg');
			
		    $('.itemName').html('FRONT ROW ULTIMATE NACHOS');
			$('.itemDescription').html('Crispy tortilla chips with lots of melted jack and cheddar cheese, chopped tomatoes, onions, peppers topped with vegetarian bean chili make this Waterloo’s pick for the city’s best nachos');
			$('.itemPrice').html('$13.99');

			$('.ratingStar').css('margin', '130px 22px');
			$('.ratingInfo').css('margin', '144px 172px');
			$('.itemDescription').css('margin', '181px 24px');
			$('.itemPrice').css('margin', '297px 93px');

		 }else if(current_menu == 'poutine'){

		 	changePicture('assets/img/menu/beer/pilsner.jpg');

			$('.itemName').html('PILSNER');
			$('.itemDescription').html('Very light, clear colour from pale to golden yellow, and a distinct hop aroma and flavour');
			$('.itemPrice').html('$6.79');
			$('.ratingStar').css('margin', '128px 22px');
			$('.ratingInfo').css('margin', '145px 172px');
			$('.itemDescription').css('margin', '194px 24px');
			$('.itemPrice').css('margin', '280px 93px');
		}
	*/
		// Anim#1: change picture after item is selected not during - FHM
		$('#selectedItem').animate({
		    left: '729',
		  }, 500);
	});

	$('#item7').click(function(){

		/*

		var opac1 = $("#contentImg1").css('opacity');
		var opac2 = $("#contentImg2").css('opacity');
			
		if(opac1 == 1 && opac2 == 1){

	    // get name of current menu - FHM
	  	 var current_menu = $('.menuSelected').attr('id');

	  	// change description based on menu selected - FHM
		 if(current_menu == 'special'){

		 	changePicture('assets/img/menu/special/buffalochickenwrap.jpg');
		 	
		 	$('.itemName').html('BUFFALO CHICKEN WRAP');
			$('.itemDescription').html('Buffalo chicken wraps are sure to be the game-winner for a fun and fast dinner or appetize');
			$('.itemPrice').html('$10.99');
			$('.ratingStar').css('margin', '132px 22px');
			$('.ratingInfo').css('margin', '145px 172px');
			$('.itemDescription').css('margin', '171px 24px');
			$('.itemPrice').css('margin', '299px 93px');

		 }else if(current_menu == 'starter'){

		 	changePicture('assets/img/menu/starter/veggieroll.jpg');
			
		    $('.itemName').html('FRESH VEGGIE ROLL');
			$('.itemDescription').html('Fresh Asian slaw as well as cilantro in a rice noodle wrap. We serve the 2 spring rolls with a Thai peanut sauce');
			$('.itemPrice').html('$6.99');

			$('.ratingStar').css('margin', '130px 22px');
			$('.ratingInfo').css('margin', '144px 172px');
			$('.itemDescription').css('margin', '181px 24px');
			$('.itemPrice').css('margin', '297px 93px');

		 }else if(current_menu == 'poutine'){

		 	changePicture('assets/img/menu/beer/bud.jpg');

			$('.itemName').html('BUDWEISER');
			$('.itemDescription').html('Beechwood aging and all natural ingredients produce a smooth taste Canadians love');
			$('.itemPrice').html('$4.79');
			$('.ratingStar').css('margin', '128px 22px');
			$('.ratingInfo').css('margin', '145px 172px');
			$('.itemDescription').css('margin', '194px 24px');
			$('.itemPrice').css('margin', '280px 93px');
		}
	*/
		// Anim#1: change picture after item is selected not during - FHM
		$('#selectedItem').animate({
		    left: '882'
		  }, 500);
	});

	function changePicture(pic_path){

		var status = $("#contentImg2").css('display');
	 	if(status == 'none'){

	 		var index = $("#contentImg1").css('z-index');
	 		var new_index = index - 1;

	 		$("#contentImg2").css("z-index", new_index);
			$("#contentImg2").css('display', 'inline');
			$("#contentImg2").attr("src", pic_path);
			$("#contentImg1").fadeOut(1000);
		
	 	}else{

	 		var index = $("#contentImg2").css('z-index');
	 		var new_index = index - 1;

	 		$("#contentImg1").css("z-index", new_index);
	 		$("#contentImg1").css('display', 'inline');
	 		$("#contentImg1").attr("src", pic_path);
			$("#contentImg2").fadeOut(1000);
	 	}	
	}
}

function video(videos){

	var previous_num = 0;
	
	showRandomVideo();	

	$("#next").click(function(event) {
		showRandomVideo();	
	});
	
	// displays a random video from list - FHM
	function showRandomVideo(){

		var random_num = Math.floor(Math.random()*(videos.length));

		// make sure our new random number is not the same as last one
		while(previous_num == random_num){
			random_num = Math.floor(Math.random()*(videos.length));
		}

		previous_num = random_num;
		
		var yt_url = "http://www.youtube.com/embed/";
		var options = "?rel=0&showinfo=0&controls=0&modestbranding=1&iv_load_policy=3&autoplay=1";
		var vid_url = yt_url + videos[random_num].path + options;

		$("#video").attr("src", vid_url);
		$("#video_name").html(videos[random_num].name);
		$("#video_author").html(videos[random_num].author);
	}
}