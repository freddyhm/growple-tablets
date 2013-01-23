/* GLOGBAL VARIABLES */
var touch_count = 0; // reset global vars - FHM
var activate = 0;       // reset global vars - FHM
var touch_try = 0;      // reset global vars - FHM

var basket = new Array(); // menu global vars - FHM
var user_basket = {};   // menu global vars - FHM
var sleep_timer = "";   // sleep global vars - FHM

var bask_item_id = 0; // basket global var - FHM

// functions to be executed when page is loaded - FHM
$(function(){
    $("#sleepSlideshow").slides({
        play: 7000,
        effect: 'slide',
        crossfade: true,
        generatePagination: false
    });

    $(".promoSlide").click(function(event) {
        alert("d");
    });
});

// list of global functions - FHM
function activateSleepTimer(){
    sleep_timer = clearTimeout(sleep_timer);
    sleep_timer = setTimeout(function() {sleep(); }, 5000);
}

//put the app to sleep mode after a certain time has elapsed - FHM
function sleep(){

   $("#sleepSlideshow").show();

}

// list of functions according to main pages - FHM
function home(){

        var appCache = window.applicationCache;
        var one_user = 0;
        
        // on checking for both refresh and loading, reset the app - FHM        
        $(appCache).bind('checking', function(event) {
            // kick-start analytics
            startAnalytics(function(){
                clearTimeout(sleep_timer);
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

        $(document).ready(function() { 

            // check if analytics are set (when cached) - FHM
            var is_path = $.cookie("path");
            if(is_path == null){
                startAnalytics();
            }
            
            $(".playbook").ajaxError(function(){
                alert("Could not connect to server, please try again!");
            }); 

            $("#sleepSlideshow").click(function(event) {
                $(this).hide();
                 activateSleepTimer(); 
             }); 

             //activate timer - FHM
            activateSleepTimer(); 

            // click is the main activity to derive idle user time or not so reset timer if click - FHM
            $(".playbook").click(function(e){ 
                    if(e.target.className != 'navLink'){
                        activateSleepTimer();
                    }else{
                        sleep_timer = clearTimeout(sleep_timer);
                    }
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
                 activate++;
            }

            // after fourth step, check if all activation numbers have been hit - FHM
            if(touch_try == 3){

                if(touch_count == 11 && activate == 3){
                     $("#loadPage").show();
                    endCycle(function(){
                         $("#load_pic").hide();
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

    $("#sleepSlideshow").click(function(event) {
            $(this).hide();
             activateSleepTimer(); 
        }); 

    activateSleepTimer();

    // click is the main activity to derive idle user time or not so reset timer if click - FHM
    $(".playbook").click(function(e){ 
        if(e.target.className != 'navLink'){
            activateSleepTimer();
        }else{
            sleep_timer = clearTimeout(sleep_timer);
        }
    });

    var first_item = true;

    $("#menuHome").click(function(){
        $(this).attr("src", URL  + "public/img/common/btn_home_pressed.png");
        
         setTimeout(function(){ 

            $("#menuHome").attr("src", URL  + "public/img/common/btn_home.png");

             // activity exit point analytic  - FHM
            var last_item = $("#selectedItem").attr("value");

            if(last_item == undefined){
                last_item = 2;
            }

            // check for first item for analytics - FHM
            var action = first_item == true ? "first" : "exit_while_viewing_menu_item";
                // save current basket - FHM
                saveBasket(basket, function(){
                   logUserActivity("out", action, last_item, function(){
                        // step exit point analytic - FHM
                        logUserStep("out", 1, function(){
                            $("body").load(URL + "home");
                        });
                   });
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

                    var opac_img1 = $("#bckgdImg1").css("opacity");
                    var opac_img2 = $("#bckgdImg2").css("opacity");

                    if(opac_img1 == 1 && opac_img2 == 1){
                            changePicture(item_pic);        
                    }
                    
                    var last_item = $("#selectedItem").attr("value");

                    if(last_item != undefined){

                        // check for first item for analytics - FHM
                        var action = first_item == true ? "first" : "viewed_menu_item";
                        logUserActivity("out", action, last_item, function(){
                            logUserActivity("in", "viewing_menu_item", item_id, function(){
                                first_item = false;
                                // slide the selected item box AFTER analytics has finished (make sure there's no gaps) - FHM
                                $('#selectedItem').animate({ left: item_pos.left, width: box_size},500, function(){

                                        $('.itemName').html(menus[menu_id].items[item_id].name.toUpperCase()).attr("value", item_id);
                                        $('.itemKorean').html(menus[menu_id].items[item_id].korean_name);
                                        $('.itemDescription').html(menus[menu_id].items[item_id].description);
                                        $('.itemPrice').html(menus[menu_id].items[item_id].price);

                                        $(this).attr("value", item_id);
                                }); 
                            });
                        });
                    }else{
                        // analytic entry (for end time, need to calculate with next point in db) - FHM
                        logUserActivity("in", "viewing_menu_item", item_id, function(){
                                 // slide the selected item box AFTER analytics has finished (make sure there's no gaps) - FHM
                            $('#selectedItem').animate({ left: item_pos.left, width: box_size},500, function(){
                                $('.itemName').html(menus[menu_id].items[item_id].name.toUpperCase()).attr("value", item_id);
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

            var selected_item = $(".itemName").val();
            var selected_item_name = $(".itemName").html();
            var selected_menu_name = $(".menuSelected .menuName").html().toLowerCase();

            // btn pressed - FHM
            $(this).attr("src", URL  + "public/img/menu/btn_grab_pressed.png");     
            setTimeout(function() { 
                    $("#grabIt").attr("src", URL  + "public/img/menu/btn_grab.png"); 
                    animateCartAddItem(); 
                    addItem(selected_item, selected_item_name, selected_menu_name, 'yes');
            }, 150);
            
            var last_item = $("#cartItems tr td:last").position();

            // position on first load when there is no last item - FHM
            if(last_item != undefined){
                $("#cartArea").animate({ scrollLeft: last_item.left}, "slow");    
            }
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
    $("#waitForServerSign").click(function(event) {

        // Store cart in session variable - Need to do - FHM
        var answer = confirm("*WAIT* Did the server take your order?");

        // redirect to home page - FHM
        if(answer == true){
                
            var url = URL + 'mother/addToCart/d/';

            // empty the user's basket - FHM
            saveBasket("");

            // add the basket to the cart - FHM 
            addToCart(basket, function(){
                // activity exit point analytic  - FHM
                var last_item = $("#selectedItem").attr("value");

                if(last_item == undefined){
                    last_item = 2;
                }   
                // check for first item for analytics - FHM
                var action = first_item == true ? "first" : "exit_while_viewing_menu_item";
                logUserActivity("out", action, last_item, function(){
                    logUserStep("out", 1, function(){
                        $("body").load(URL + "home");
                    });
                });
            });
        } 
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

    $("#sleepSlideshow").click(function(event) {
            $(this).hide();
             activateSleepTimer(); 
    }); 

    activateSleepTimer();

     // click is the main activity to derive idle user time or not so reset timer if click - FHM
    $(".playbook").click(function(e){ 
            if(e.target.className != 'navLink'){
                activateSleepTimer();
            }else{
                sleep_timer = clearTimeout(sleep_timer);
            }
    });

    // play random video when video ends, make button clickable and control video with click - FHM
    var currentVideo = document.getElementById("video");
    var previous_vid = new Array(0, 0 ,0 ,0 ,0);
    var previous_position = 0;
    var status = 'play';
    var vid_timer = "";
    var curr_vid_id = "";
    var finished_watching = "no";
    var first_vid = true;
            
    // analytics exit point when video ends - FHM
    $(currentVideo).bind('ended', function(event) {
        curr_vid_id = $(this).attr("id");
        logUserActivity("out", "finished_watching", curr_vid_id, function(){
             finished_watching = "yes";
             showRandomVideo();
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
                logUserActivity("out", action, curr_vid_id, function(){
                    logUserStep("out", 2, function(){
                        $("body").load(URL + "home");
                    });
                });
         }, 300);
    });

    $("#next").click(function(event) {
        $(this).attr("src", URL  + "public/img/video/btn_next_pressed.png");
         setTimeout(function(){ 
            $("#next").attr("src", URL  + "public/img/video/btn_next.png");
            var curr_vid_id = curr_vid_id = $(currentVideo).attr("id");

            // check if first video for analytic - FHM
            var action = first_vid == true ? "first" :  "skipped_video";
            logUserActivity("out", action, curr_vid_id, function(){
                showRandomVideo(false);
             });
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
    function showRandomVideo(position){

        first_vid = position;

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

        vid_timer = setTimeout(function() {
                $("#video_menu").hide();
        }, 3500);
            
        logUserActivity("in", "started_watching_video", videos[random_num].id, function(){
            $(currentVideo).attr("src", URL + 'public/vid/' + videos[random_num].path);
            $(currentVideo).attr("id", videos[random_num].id);
            $("#video_name").html( videos[random_num].name);
            $("#video_author").html( videos[random_num].author);
            // reset finished watching var - FHM
            finished_watching = "no";               
        });                       
    }
}

function game(){

    $("#sleepSlideshow").click(function(event) {
            $(this).hide();
             activateSleepTimer(); 
        }); 

    activateSleepTimer();

     // click is the main activity to derive idle user time or not so reset timer if click - FHM
    $(".playbook").click(function(e){ 
            if(e.target.className != 'navLink'){
                activateSleepTimer();
            }else{
                sleep_timer = clearTimeout(sleep_timer);
            }
    });

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