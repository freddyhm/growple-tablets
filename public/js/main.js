
/* GLOGBAL VARIABLES */
var touch_count = 0; // reset global vars - FHM
var activate = "";       // reset global vars - FHM
var basket = new Array(); // menu global vars - FHM
var user_basket = {};   // menu global vars - FHM
var sleep_timer = "";   // sleep global vars - FHM
var bask_item_id = 0; // basket global var - FHM
var server_active = false;
var nofade_timer = "";

// kick-start sleep timer - FHM
function activateSleepTimer(){

    // check if a timer is already present, if yes than clear and init - FHM 
    if(sleep_timer != ""){
        sleep_timer = clearTimeout(sleep_timer);
    }

    sleep_timer = setTimeout(function() {sleep(); }, 180000);
}

// checks to see if no sleep video is playing after 3 min
function resetNoFade(){
    nofade_vid  = document.getElementById("noSleepVid");

    if(nofade_timer != ""){
        nofade_timer = clearInterval(nofade_timer);
    }

    nofade_timer = setInterval(function(){
    if(nofade_vid.paused){
        nofade_vid.play();
        
     }
    }, 180000);    
}

//put the app to sleep mode after a certain time has elapsed - FHM
function sleep(){
   // init slideshow  - FHM
    $("#sleepSlideshow").slides({
        play: 5000,
        effect: 'slide',
        crossfade: true,
        generatePagination: false
    });

   $("#sleepSlideshow").show();
}

function exitSleepSlideshow(){

    // hide the slideshow - FHM
    $("#sleepSlideshow").hide();

    // remove slide control class (stop the slideshow) - FHM
    var cnt = $(".slides_control").contents();
    $(".slides_control").replaceWith(cnt);

    activateSleepTimer(); 
}


//init binding events for sleep functions - FHM
function startSleep(){

    activateSleepTimer();

     // click is the main activity to derive idle user time or not so reset timer if click - FHM
     // exceptions are with nav links (home) and cart action (menu) where we don't want to activate timer - FHM
    $(".playbook").click(function(e){ 
        if(e.target.className != "navLink" && server_active == false && e.target.className != "serverActive"){
            activateSleepTimer();
        }else{
            sleep_timer = clearTimeout(sleep_timer);
        }
    });

    $("#sleepSlideshow").click(function(event) {

        // get class of image clicked and redirect to menu if promo slide - FHM
        var is_promo = event.target.className == "promoSlide" ? true : false;
        if(is_promo == true){

           // alert(event.target.id);

            var item_id = event.target.id.split("#")[0];
            var item_name = event.target.id.split("#")[1];
            var item_menu_id = event.target.id.split("#")[2];
            var item_menu_name = event.target.id.split("#")[3];
            var item_pic = event.target.id.split("#")[4];
            var item_promo_id = event.target.id.split("#")[5];

            var promo_item = { "id": item_id, "name": item_name, "menu_id": item_menu_id, "menu_name": item_menu_name, "pic" : item_pic, "promo_id" : item_promo_id};
            $.jStorage.set("promo_item", JSON.stringify(promo_item));

                logUserStep("in", 1, function(){
                    logUserActivity("in", "clicked_promo_slide", item_id, "", function(){

                    var in_menu = $(".mainMenu").html();
                    if(in_menu == undefined){
                        $("body").load(URL + "menu", function(){
                            $(function(){
                                $("#touch").hide();
                                $("#hiddenPromo").trigger("click");
                            });
                        });
                    }else{
                        $("#hiddenPromo").trigger("click");
                        exitSleepSlideshow();
                    }  
                        
                    });
                });
            
        }else{
          exitSleepSlideshow();
        }
    });  
}


// list of functions according to main pages - FHM
function home(){

    var appCache = window.applicationCache;
    var one_user = 0;
    var touch_try = 0;   // count for reset function - FHM

    // on checking for both refresh and loading, reset the app - FHM        
    $(appCache).bind('checking', function(event) {
        // kick-start analytics & clear sleep - FHM
        sleep_timer = clearTimeout(sleep_timer);
        $("#loadPage").show();
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

    $(document).ready(function() {

        // check if analytics are set (when cached) - FHM
        var is_path = $.jStorage.get("path");
        if(is_path == null){
            startAnalytics();
        }

        startSleep();
        resetNoFade();
        
        $(".playbook").ajaxError(function(){
            alert("Could not connect to server, please try again!");
            sleep_timer = clearTimeout(sleep_timer);
        }); 

         // make start button clickable 
        $("#start_screen").click(function(event) {
          startAnalytics(function(){
                $("#loadPage").hide();
                activateSleepTimer();
           });
         });

        // nav links - FHM
        $("#menuLink").click(function(){
            $(this).attr("src", URL  + "public/img/home/btn_intmenu_pressed.png");
             setTimeout(function(){ 
                $("#menuLink").attr("src", URL  + "public/img/home/btn_intmenu.png");
                logUserStep("in", 1, function(){
                    $("body").load(URL + "menu");
                });
             }, 300);
        });

        $("#videoLink").click(function(){
            $(this).attr("src", URL  + "public/img/home/btn_video_pressed.png");
             setTimeout(function(){ 
                $("#videoLink").attr("src", URL  + "public/img/home/btn_video.png");
                logUserStep("in", 2, function(){
                    $("body").load(URL + "video");
                 });
             }, 300);
        });


        $("#gameLink").click(function(){
            $(this).attr("src", URL  + "public/img/home/btn_game_pressed.png");
             setTimeout(function(){ 
                $("#gameLink").attr("src", URL  + "public/img/home/btn_game.png");
                logUserStep("in", 3, function(){
                    $("body").load(URL + "game");
                });
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
             
             if(touch_count == 6){
                activate = 'a';
             }else if(touch_count == 9){
                activate += 'b';
             }else if(touch_count == 11){
                activate += 'c';
             }
        }

        // after fourth step, check if all activation numbers have been hit - FHM
        if(touch_try == 3){

            if(touch_count == 11){

                /*
                if(activate == 'ac'){
                    $("#loadPage").show();
                    endCycle(function(){
                        $("#load_pic").hide();
                     //   window.location.href = URL + "home?logout"; 
                    });
                }
                */

                if(activate == 'abc'){
                    $("#loadPage").show();
                    endCycle(function(){
                        // hide the loading pic and clear sleep so slideshow doesn't appear until user clicks - FHM
                         $("#load_pic").hide();
                         sleep_timer = clearTimeout(sleep_timer);
                    });
                }
            }

            //reset variables
            touch_count = 0;
            activate = 0;
            touch_try = 0;  
        }
    }
}

function menu(menus, venue){
    // counter for grabIt function - FHM
    var cart_status = "hidden";
    var touched_cart = false;
    var cart_timer = "";
    var first_item = true;
    var venue = venue;
    user_basket = getBasket();
    server_active = false; // need to re-init persists when script is cached) - FHM

    // clear basket (persists when script is cached) - FHM 
    basket = new Array();

    if(user_basket != ""){
       fillCart(user_basket);  
    }

    startSleep();
    resetNoFade();

    function confirm(message, callback) {
        $('#confirm').modal({
            closeHTML: "<a href='#' title='Close' class='modal-close'>x</a>",
            position: ["20%",],
            overlayId: 'confirm-overlay',
            containerId: 'confirm-container', 
            onShow: function (dialog) {
                var modal = this;
                $('.message', dialog.data[0]).append(message);

                // if the user clicks "yes"
                $('.yes', dialog.data[0]).click(function () {
                    // call the callback
                    if ($.isFunction(callback)) {
                        callback.apply();
                    }
                    // close the dialog
                    modal.close(); // or $.modal.close();
                });
            }
        });
    }

    $("#hiddenPromo").click(function(event) {

        var promo_item  = $.parseJSON($.jStorage.get("promo_item"));              
        
        if(promo_item){
            var last_item = $("#cartItems tr td:last").position();
            var menu_id = "#menu" + promo_item.menu_id;
            var item_id = "#item" + promo_item.id + "1";

            $(menu_id).trigger("click");
            $(item_id).trigger("click");

            var current_item_pos;

            setTimeout(function(){ 
                current_item_pos  = $("#selectedItem").css("left");
                $(".subMenu").animate({ scrollLeft: current_item_pos}, "slow");
            }, 1300)

            // position on first load when there is no last item - FHM
            if(last_item != undefined){
                $("#cartArea").animate({ scrollLeft: last_item.left}, "slow"); 
            }
        }
    });

    $("#menuHome").click(function(){
        $(this).attr("src", URL  + "public/img/common/btn_home_pressed.png");
        
         setTimeout(function(){ 

            $("#menuHome").attr("src", URL  + "public/img/common/btn_home.png");

             // activity exit point analytic  - FHM
            var last_item = $("#selectedItem").attr("value");
            // check for first item for analytics - FHM
            var action = first_item == true ? "first" : "exit_while_viewing_menu_item";
                // save current basket - FHM
                saveBasket(basket, function(){
                   logUserActivity("out", action, last_item, "", function(){
                        // step exit point analytic - FHM
                        logUserStep("out", 1, function(){
                            $("body").load(URL + "home");
                        });
                   });
                });
         }, 300);
    });

    function fillCart(basket){

        //function addItem(id, name, menu_name, menu_pic, push){
        basket.forEach(function(entry){
            addItem(entry[0], entry[1], entry[2], entry[3], "no");
        });
    }

    $(".menuList").each(function(event) {

        $(this).click(function(event) {

            // get id of currently selected menu  FHM
            var current_menu = $('.menuSelected').attr('id');
            var current_id = '#' + current_menu;

            // deselect current menu and change header - FHM
            $(current_id).removeClass('menuSelected');
            $("> img", current_id).attr("src", URL + "public/img/menu/common/header_menu_notselected.png");
            $(current_id).css("background-color", "");
            
            // select new menu and change header - FHM
            $(this).addClass('menuSelected');
            $("> img",this).attr("src", URL + "public/img/menu/common/header_menu_selected.png");
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
                $("#bckgdImg2").attr("src", pic_path, function(){
                    $("#bckgdImg1").fadeOut(100);
                });
        }else{

                var index = $("#bckgdImg2").css('z-index');
                var new_index = index - 1;

                $("#bckgdImg1").css("z-index", new_index);
                $("#bckgdImg1").css('display', 'inline');
                $("#bckgdImg1").attr("src", pic_path, function(){
                    $("#bckgdImg2").fadeOut(100);    
                });
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
                var id = key + 1;
                var item = "<td id='item" + id + "' class='items' value='" + menu_item_id + "'><span>" + name.toUpperCase();

                if(venue == 'owl'){
                    var korean_name = menus[menu_num].items[key].korean_name;
                    item += "</span><br>" + "<span>" + korean_name + "</span></td>";
                }
            
                $(".subMenuList table tr").append(item);
            }

            // after adding all items, add click behavior to all of them - FHM
            $(".items").click(function(){

                    var folder = '/dishes/';
                    var item_id = $(this).attr("value");
                    var menu_id = $(".menuSelected").attr("id").substring(4);
                    
                    if(venue == 'owl'){
                        // set proper image folder depending on menu - FHM
                        if(menu_id == 10){
                                folder = '/drinks/';
                        }else if (menu_id == 11){
                                folder = '/beer/';
                        }else if (menu_id == 12){
                                folder = '/combos/';
                        }
                    }else if(venue == 'frontrow'){

                        if(menu_id == 4){
                            folder = '/appetizers/';
                        }else if (menu_id == 9){
                            folder = '/burgers/';
                        }else if (menu_id == 10){
                            folder = '/drinks/';
                        }else if(menu_id == 11){
                            folder = '/desserts/';
                        }else if(menu_id == 13){
                            folder = '/beer/';
                        }
                    }
                    
                    var item_bckgd_pic = URL + 'public/img/menu/' + venue + folder + menus[menu_id].items[item_id].big_pic;
                    var item_pic = menus[menu_id].items[item_id].big_pic;
                    var item_pos = $(this).position();
                    var item_width = $(this).css("width");
                    var item_padding_right = $(this).css("padding-right");
                    var item_padding_left = $(this).css("padding-left");
                    var box_size = parseInt(item_width) + parseInt(item_padding_left) + parseInt(item_padding_right) - 27;

                    var opac_img1 = $("#bckgdImg1").css("opacity");
                    var opac_img2 = $("#bckgdImg2").css("opacity");

                    if(opac_img1 == 1 && opac_img2 == 1){
                            changePicture(item_bckgd_pic);        
                    }
                    
                    var last_item = $("#selectedItem").attr("value");

                    if(last_item != undefined){
                        // check for first item for analytics - FHM
                        var action = first_item == true ? "first" : "viewed_menu_item";
                        logUserActivity("out", action, last_item, "", function(){
                            logUserActivity("in", "viewing_menu_item", item_id, "", function(){
                                first_item = false;
                                // slide the selected item box AFTER analytics has finished (make sure there's no gaps) - FHM
                                $('#selectedItem').animate({ left: item_pos.left, width: box_size},500, function(){

                                        $('.itemName').html(menus[menu_id].items[item_id].name.toUpperCase()).attr("value", item_id).attr("title", item_pic);
                                        $('.itemKorean').html(menus[menu_id].items[item_id].korean_name);
                                        $('.itemDescription').html(menus[menu_id].items[item_id].description);
                                        $('.itemPrice').html(menus[menu_id].items[item_id].price);

                                        $(this).attr("value", item_id);
                                }); 
                            });
                        });
                    }else{
                        // analytic entry (for end time, need to calculate with next point in db) - FHM
                        logUserActivity("in", "viewing_menu_item", item_id, "", function(){
                                 // slide the selected item box AFTER analytics has finished (make sure there's no gaps) - FHM
                            $('#selectedItem').animate({ left: item_pos.left, width: box_size},500, function(){
                                $('.itemName').html(menus[menu_id].items[item_id].name.toUpperCase()).attr("value", item_id).attr("title", item_pic);
                                $('.itemKorean').html(menus[menu_id].items[item_id].korean_name);
                                $('.itemDescription').html(menus[menu_id].items[item_id].description);
                                $('.itemPrice').html(menus[menu_id].items[item_id].price);

                                $(this).attr("value", item_id);
                            });  
                        });
                    }                   
            });
    }       
    
    // display first menu - FHM
    $("#menu4").trigger('click');

    // Show cart, add item, and close
    $("#grabIt").click(function(){

        // tracking grab it press, finishing first activity if still true
        if(first_item == true){
            var current_item_id = $("#selectedItem").attr("value");
            logUserActivity("out", "first", current_item_id, "", function(){
                logUserActivity("in", "pressed_grab_it", "", 2, function(){
                    logUserActivity("out", "pressed_grab_it", "", 2, function(){
                        first_item = false;
                    });
                });
            });
        }else{
             // tracking when press grab it button 
            logUserActivity("in", "pressed_grab_it", "", 2, function(){
                logUserActivity("out", "pressed_grab_it", "", 2, function(){
                    first_item = false;
                });
            });
        }

        var selected_item = $(".itemName").val();
        var selected_item_name = $(".itemName").html();
        var selected_item_pic = $(".itemName").attr("title"); // need to change this - getting item name through title - FHM
        var selected_menu_name = $(".menuSelected .menuName").html().toLowerCase();

        // btn pressed - FHM
        $(this).attr("src", URL  + "public/img/menu/common/btn_grab_pressed.png");     
        setTimeout(function() { 
            $("#grabIt").attr("src", URL  + "public/img/menu/common/btn_grab.png"); 
            animateCartAddItem(); 
            addItem(selected_item, selected_item_name, selected_menu_name, selected_item_pic, 'yes');
        }, 100);
        
        var last_item = $("#cartItems tr td:last").position();

        // position on first load when there is no last item - FHM
        if(last_item != undefined){
            $("#cartArea").animate({ scrollLeft: last_item.left}, "slow");    
        }
    });


    // inserts item into a user's cart - FHM
    function addItem(id, name, menu_name, menu_pic, push){

        var promo_item = $.parseJSON($.jStorage.get("promo_item"));              
        var promo_id = "";

        // check if our promo item is set
        if(promo_item != null){
            // delete promo when done setting 
            if(id == promo_item.id){
                promo_id = promo_item.promo_id;
                $.jStorage.deleteKey("promo_item");
            }
        }

        if(push == 'yes'){
            if(id < 10){
                id = "0"+ id;
            }
        }

        var item_desc = new Array();
        item_desc[0] = id;
        item_desc[1] = name;
        item_desc[2] = menu_name;
        item_desc[3] = menu_pic;
        item_desc[4] = promo_id;

        basket.push(item_desc);

        var del_id = "cart_" + bask_item_id;
        var is_dish = true;

        var item_num = "";
        var item_name = "";
        var del_img = "";
        var item_img = "";

    
        if(venue == 'owl'){
            if(menu_name == 'appetizers' || menu_name == 'soup &amp; noodle'){
                menu_name = 'dishes';
            }

            if(menu_name == 'drinks' || menu_name == 'beer' || menu_name == 'combos'){
                is_dish = false;
            }

            if(is_dish == false){
                item_num = "<div class='cartNum' id='cart" + id + "'>" + menu_name + "</div>";  
            }else{
                item_num = "<div class='cartNum' id='cart" + id + "'>#" + id + "</div>";  
            }

            item_name = "<div class='cartName' id='cart" + name + "'>" + name + "</div>";

        }else if(venue == 'frontrow'){

             if(menu_name == 'burgers + pasta'){
                menu_name = 'burgers';
            }

            item_num = "<div style='font-size:26px; bottom:164px' class='cartNum' id='cart" + id + "'>" + name + "</div>";  
        }

        item_img =  "<img class='smallPicItem' width='240px' height='170px'  src='" + URL + "public/img/menu/" + venue + "/" + menu_name + "/" + menu_pic  + "'>";

        del_img = "<img class ='cartDeleteItem' value='" + id + "' id='" + del_id + "' src='" + URL + "public/img/menu/common/cart/btn_delete.png'>";
       
        del_id = "#" + del_id;
        
        $("#cartItems tr").append("<td>" + item_img + del_img + item_name + item_num + "</td>");  
 
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

                // flag for sleep to get cleared - FHM
                server_active = true;
    
                // show "waiting for server"  - FHM
                $(this).attr("src",URL + "public/img/menu/common/cart/btn_edit.png");
                $("#grabIt").css("z-index", "1");
                $("#cartTab").hide();
                $("#cart").css("z-index", "2");
                $("#waitForServer").show();

            }else{
                // flag for sleep to init - FHM
                server_active = false;

                // Triggering bPopup when click event is fired
                $("#basic-modal-content").modal();
            }
        }else{

            // flag for sleep to get cleared - FHM
            server_active = false;

            // pulls cart back up after a short interval - FHM 
            animateCartAddItem();

            // abort "waiting for server"  - FHM
            $(this).attr("src",URL + "public/img/menu/common/cart/btn_cart_ready.png");
            $("#grabIt").css("z-index", "2");
            $("#cartTab").show();
            $("#cart").css("z-index", "1");
            $("#waitForServer").hide();
        }
    });

    // done button pressed, pops in and out - FHM
    $("#waitForServer").click(function(event) {

        // pop-up making sure user has taken order - FHM
        confirm("*WAIT* <br><br>Did the server take your order?", function(){
           // clear server active - FHM
            server_active = false;

            var url = URL + 'mother/addToCart/d/';
            // empty the user's basket - FHM
            saveBasket("");

            // add the basket to the cart - FHM 
            addToCart(basket, function(){
                // activity exit point analytic  - FHM
                var last_item = $("#selectedItem").attr("value");
                // check for first item for analytics - FHM
                var action = first_item == true ? "first" : "exit_while_viewing_menu_item";
                logUserActivity("out", action, last_item, "", function(){
                    logUserStep("out", 1, function(){
                        $("body").load(URL + "home");
                    });
                });
            });
        });
    });

    // area where cart is activated (cart shows/hides)
    $("#cartRibbon").click(function(event) {

        // tracking ribbon change, finishing first activity if still true
        if(first_item == true){
 
            var current_item_id = $("#selectedItem").attr("value");

            logUserActivity("out", "first", current_item_id, "", function(){
                 logUserActivity("in", "touched_ribbon","",1, function(){
                    logUserActivity("out", "touched_ribbon","",1, function(){
                        first_item = false;
                    });
                });
            });
        }else{
            logUserActivity("in", "touched_ribbon","",1, function(){
             logUserActivity("out", "touched_ribbon","",1, function(){
                first_item = false;
             });
            });
        }

        if(cart_status == "hidden"){
                animateCartDown();
        }else if(cart_status == "showing"){
                animateCartUp();                        
        }
    });

    // make cart and cart area go up and down - FHM
    function animateCartDown(){
            $(".itemDescription").css("z-index", "0");
            $("#cart").animate({bottom: "-64"}, 1);
            $("#cartTabArea").css("top", "196px");
            $("#cartTabArea").css("height", "152px");
            cart_status = "showing";
    }

    function animateCartUp(){
            $(".itemDescription").css("z-index", "2");
            $("#cart").animate({bottom: "128"}, 1);
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
        }, 5000);

      touched_cart = false;
    }
}

function video(videos, venue){

    // play random video when video ends, make button clickable and control video with click - FHM
    var currentVideo = document.getElementById("video");
    var previous_vid = new Array(0, 0 ,0 ,0 ,0);
    var previous_position = 0;
    var status = 'play';
    var vid_timer = "";
    var inactive_timer = "";
    var is_inactive = false;
    var curr_vid_id = "";
    var finished_watching = "no";
    var first_vid = true;

    startSleep();
    startInactive();

    // clear no fade timer because pb can only play one vid at a time 
    nofade_timer = clearInterval(nofade_timer);

    // goes to home after 10 min of inactivity 
    function startInactive(){
        // reset inactive variable
        is_inactive = false;
        inactive_timer = clearTimeout(inactive_timer);
        inactive_timer = setTimeout(function(){
            is_inactive = true;
        }, 600000)
    }
            
    // analytics exit point when video ends - FHM
    $(currentVideo).bind('ended', function(event) {
        curr_vid_id = $(this).attr("id");
        logUserActivity("out", "finished_watching", curr_vid_id, "", function(){
             finished_watching = "yes";
             if(is_inactive == true){
                $("body").load("home");
             }else{
                 showRandomVideo();    
             }
        });
    });

    // clear sleep timer when video is playing - FHM
    $(currentVideo).bind('play', function(event) {
        sleep_timer = clearTimeout(sleep_timer);
    });

    showRandomVideo(true);      

    $("#videoHomeLink").click(function(){
        $("#videoHomeLink").attr("src", URL  + "public/img/common/btn_home_pressed.png");
         setTimeout(function(){ 
            $("#videoHomeLink").attr("src", URL  + "public/img/common/btn_home.png");
                // activity exit point analytic - FHM
                var curr_vid_id = curr_vid_id = $(currentVideo).attr("id");
                // check if first video for analytics - FHM
                var action = first_vid == true ? "first" : "exit_while_watching_video";
                 // step exit point analytic - FHM
                logUserActivity("out", action, curr_vid_id, "", function(){
                    logUserStep("out", 2,  function(){
                        $("body").load(URL + "home");
                    });
                });
         }, 300);
    });

    $("#next").click(function(event) {
        
        // reset inactive timer
        startInactive();
        
        $(this).attr("src", URL  + "public/img/video/btn_next_pressed.png");
         setTimeout(function(){ 
            $("#next").attr("src", URL  + "public/img/video/btn_next.png");
            var curr_vid_id = curr_vid_id = $(currentVideo).attr("id");

            // check if first video for analytic - FHM
            var action = first_vid == true ? "first" :  "skipped_video";
            logUserActivity("out", action, curr_vid_id, "", function(){
                showRandomVideo(false);
             });
         }, 300);
    });

    // check menu and video status, stop or play accordingly - FHM
    $(currentVideo).click(function(event) {

        // reset inactive timer
        startInactive();

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
    function showRandomVideo(position){

        first_vid = position;

        vid_timer  = clearTimeout(vid_timer);
         vid_timer = setTimeout(function() {
                $("#video_menu").hide();
        }, 5000);

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
            
        logUserActivity("in", "started_watching_video", videos[random_num].id, "", function(){
            $(currentVideo).attr("src", URL + 'public/vid/' + venue + '/' + videos[random_num].path);
            $(currentVideo).attr("id", videos[random_num].id);
            $("#video_name").html( videos[random_num].name);
            $("#video_author").html( videos[random_num].author);
            // reset finished watching var - FHM
            finished_watching = "no";               
        });                         
    }
}

function game(){

    startSleep();
    resetNoFade();    

    $("#gameHomeLink").click(function(){            
        $("#gameHomeLink").attr("src", URL  + "public/img/error/btn_return_pressed.png");
        // push and unpush - FHM        
        setTimeout(function() { 
            $("#gameHomeLink").attr("src", URL  + "public/img/error/btn_return.png"); 
                logUserStep("out", 3, function(){
                    $("body").load(URL + "home");
                }); 
        }, 100);
    });
}    

