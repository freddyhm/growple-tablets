
/* GLOGBAL VARIABLES */
var touch_count = 0; // reset global vars - FHM
var activate = "";       // reset global vars - FHM
var basket = new Array(); // menu global vars - FHM
var user_basket = {};   // menu global vars - FHM
var sleep_timer = "";   // sleep global vars - FHM
var bask_item_id = 0; // basket global var - FHM
var server_active = false;
var nofade_timer = "";

$(document).ready(function($) {
    $("#discover-btn").click(function(event){
       $("body").load(URL + 'discover', function(){
            navSwitchTo("discover");
       });
    });

    $("#play-btn").click(function(event) {
        $("body").load(URL + 'play', function(){
            navSwitchTo("play");
        });
    });
});

function navSwitchTo(page){

    var playBckgd = "";
    var playTitle = "";
    var discBckgd = "";
    var discTitle = "";

    if(page == 'play'){ 

        // style discover button
        discBckgd = "-webkit-linear-gradient(270deg, #f0f0f0 0%, rgba(219, 219, 219, 0.9) 100%)";
        discTitle = "public/img/common/discover-nonpressed.png";
       
        // style play button
        playBckgd = "-webkit-linear-gradient(270deg, #81b53d 0%, rgba(152, 202, 82, 0.9) 100%)";
        playTitle = "public/img/common/play-pressed.png";

    }else if (page == 'discover'){

        // style discover button
        discBckgd = "-webkit-linear-gradient(270deg, #006fb7 0%, rgba(0, 99, 166, 0.9) 100%)";
        discTitle = "public/img/common/discover-pressed.png";
       
        // style play button
        playBckgd = "-webkit-linear-gradient(270deg, #f0f0f0 0%, rgba(219, 219, 219, 0.9) 100%)";
        playTitle = "public/img/common/play-nonpressed.png";

    }

     // style discover button
    $("#discover-title").attr("src", discTitle);
    $("#discover-btn").css("background-image", discBckgd);

    // style play button
    $("#play-title").attr("src", playTitle);
    $("#play-btn").css("background-image", playBckgd);    
}

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

            var in_menu = $(".mainMenu").html();
            if(in_menu == undefined){
                logUserStep("in", 1, function(){
                    logUserActivity("in", "clicked_promo_slide", item_id, "", function(){
                        $("body").load(URL + "menu", function(){
                            $(function(){
                                $("#touch").hide();
                                $("#hiddenPromo").trigger("click");
                            });
                        });
                    });
                });
            }else{
                $("#hiddenPromo").trigger("click");
                exitSleepSlideshow();
            }  
            
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

     $(appCache).bind('error', function(event) {
        //pop up alert if error occurs
        alert("A caching error occured!");
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

 function randombox(){
    $(".box").click(function(){
        $(this).attr("src", URL  + "public/img/game/randombox/box_pressed.png");
    });

 };

function discover(items){
  
    $(".promo-item").click(function(event) {
         $(".spot-pop").modal({
            position: ["5%"],
            onShow: function (dialog){
                var modal = this;
                
                $(".spot-pop .spot-quit").click(function(event) {
                    modal.close();
                });
            }
        });
    });

    $(".feature-item").click(function(event) {

        var selectedItem = $(this).attr("id").substring(10); 

        $(".spot-pop").modal({
            position: ["5%"],
            onShow: function (dialog){
               
                var modal = this;
            
                $.each(items, function(index, val) {
                    if(val.name == 'hot'){
                        var items = val.items;
                        $.each(items, function(index, val) {
                            if(val.id == selectedItem){
                                $(".spot-pop .spot-title").html(val.name.toUpperCase());
                                $(".spot-pop .spot-pic").html();
                                $(".spot-pop .spot-price").html(val.price);
                                $(".spot-pop .spot-msg").html(val.description);
                            }
                        });
                    }
                });
                
                $(".spot-pop .spot-quit").click(function(event) {
                    modal.close();
                });
            }
        });
    });   
}

function play(videos, venue){

    // play random video when video ends, make button clickable and control video with click - FHM
    var currentVideo = document.getElementById("play-item");
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
        
      //  $(this).attr("src", URL  + "public/img/video/btn_next_pressed.png");
         setTimeout(function(){ 
        //    $("#next").attr("src", URL  + "public/img/video/btn_next.png");
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
        if(status == 'play' && $("#play-menu").css("display") == "none"){
                currentVideo.pause();
                $("#play-menu").show();


                $("navbar-play-ok").show();
                status = 'stop';
        }else if(status == 'stop' && $("#play-menu").css("display") == "block"){
                currentVideo.play();
                $("#play-menu").hide();
                status = 'play';
        }       
    });

    // displays a random video from list - FHM
    function showRandomVideo(position){

        first_vid = position;

        vid_timer  = clearTimeout(vid_timer);
         vid_timer = setTimeout(function() {
                $("#play-menu").hide();
        }, 5000);

        // reset status for new video - FHM
        status = 'play';

        // show menu if hidden (occurs when playing next video auto) - FHM
        if($("#play-menu").css("display") != "block"){
            $("#play-menu").show();
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
            $("#play-name").html( videos[random_num].name);
            $("#play-author").html( videos[random_num].author);
            // reset finished watching var - FHM
            finished_watching = "no";               
        });                         
    }
}