/* GLOGBAL VARIABLES */
var touch_count = 0; // reset global vars - FHM
var activate = "";       // reset global vars - FHM
var basket = new Array(); // menu global vars - FHM
var user_basket = {};   // menu global vars - FHM
var sleep_timer = "";   // sleep global vars - FHM
var bask_item_id = 0; // basket global var - FHM
var server_active = false;
var nofade_timer = "";
var touch_try = 0;
var currentModule = "";
var inactive_timer = "";
var vid_timer = "";
var pauseInactiveTimer = "";
var heartCount = 0;
var heartTimer = "";

function init(module){

    // clear play module timers 
    pauseInactiveTimer = clearTimeout(pauseInactiveTimer);
    vid_timer = clearTimeout(vid_timer);
    inactive_timer = clearTimeout(inactive_timer);

    var noSleepVid = document.getElementById("noSleepVid");

    currentModule = module;

    // check if analytics are set (when cached) - FHM
    var is_path = $.jStorage.get("path");
    if(is_path == null && currentModule == "discover"){
        startAnalytics(); 
        logUserStep("in", 1);
    }else if(is_path == null){
        startAnalytics();
    }   

    $(".playbook").ajaxError(function(){
        alert("Could not connect to server, please try again!");
        sleep_timer = clearTimeout(sleep_timer);
    }); 

     // make start button clickable 
    $("#start_screen").click(function(event) {
        $("body").load(URL + "discover",function(){
            $("#loadPage").hide();
        });
    });

    // since modules can be accessed equally, need to step out/in according to status
    if(module == "discover"){

        // reset heart count due to caching
        heartCount = 0;
        noSleepVid.play();

        $("#discover-btn").click(function(event){
            logUserStep("out", 1, function(){
                logUserStep("in", 1, function(){
                    $("body").load(URL + 'discover', function(){
                         navSwitchTo("discover");
                     });
                });
            });
        });

        $("#play-btn").click(function(event) {
            logUserStep("out", 1, function(){
                logUserStep("in", 2, function(){
                    $("body").load(URL + 'play', function(){
                        navSwitchTo("play");
                    });
                });
            });
        });

        startSleep();

     }else if(module == "play"){

        noSleepVid.pause();
    
        $("#discover-btn").click(function(event){
            logUserStep("out", 2, function(){
                logUserStep("in", 1, function(){
                    $("body").load(URL + 'discover', function(){
                         navSwitchTo("discover");
                    });
                });
            });
        });

        $("#play-btn").click(function(event) {
            logUserStep("out", 2, function(){
                logUserStep("in", 2, function(){
                    $("body").load(URL + 'play', function(){
                        navSwitchTo("play");
                     });
                });
            });
        });
    }
}

// set new user cycle - FHM
function reset(touch){

    var noSleepVid = document.getElementById("noSleepVid");

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
                $("#simplemodal-overlay").remove();
                $("#simplemodal-container").remove();
                $("#simplemodal-placeholder").remove();
                $("#loadPage").show(1, function(){
                    sleep_timer = clearTimeout(sleep_timer); 

                    noSleepVid.play();

                    var moduleNum = 0;

                    if(currentModule == 'discovery'){
                        moduleNum = 1;
                    }else if(currentModule == 'play'){
                        moduleNum = 2;
                    }

                     // ending last step (play or dicsover) 
                     logUserStep("out", moduleNum,function(){
                         endCycle(function(){
                        // hide the loading pic and clear sleep so slideshow doesn't appear until user clicks - FHM
                         $("#load_pic").hide();
                         });
                     });
                });
            }
        }else{
            $("#confirm-x").show();
            setTimeout(function(){
                $("#confirm-x").hide();
            }, 1000);
        }

        //reset variables
        touch_count = 0;
        activate = 0;
        touch_try = 0;  
    }
}

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

    sleep_timer = setTimeout(function() {sleep(); }, 600000);
}

//put the app to sleep mode after a certain time has elapsed - FHM
function sleep(){

    // make sure that the slideshow hasn't started yet 
    if($(".slides_control")[0] == undefined){
        // init slideshow  - FHM
        $("#sleepSlideshow").slides({
            play: 5000,
            effect: 'slide',
            crossfade: true,
            generatePagination: false
        });

       $("#sleepSlideshow").show();
    };

    // set limit on slideshow duration, exit after some time
    setTimeout(function() {
        $("#sleepSlideshow").trigger("click");
    }, 900000); 
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
        if(e.target.className != "nav-link" && e.target.id != "start_screen" && server_active == false && e.target.className != "serverActive" && currentModule != "play"){
          activateSleepTimer();
        }else{
            sleep_timer = clearTimeout(sleep_timer);
        }
    });

    $("#sleepSlideshow").click(function(event) {

        // get class of image clicked and redirect to menu if promo slide - FHM
        var is_promo = event.target.className == "promoSlide" ? true : false;

        /*
        if(is_promo == true){

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
            */
          exitSleepSlideshow();
        //}
    });  
}

function randombox(){
    $(".box").click(function(){
        $(this).attr("src", URL  + "public/img/game/randombox/box_pressed.png");
    });

 };

function discover(hotItems, infoItems){

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

        init("discover");

        addSlideItems(hotItems, "hot");

        /* touch slider */
        $('.iosSlider').iosSlider({
            scrollbar: true,
            snapToChildren: true,
            desktopClickDrag: true,
            scrollbarMargin: '5px 40px 0 40px',
            scrollbarBorderRadius: 0,
            scrollbarHeight: '2px',
            navPrevSelector: $('.prevButton'),
            navNextSelector: $('.nextButton')
        });
        
        function addSlideItems(itemList, submod){
            $.each(itemList.items, function(index, val) {
                var item = "<div class='item' id='item" + val.id + "'><div class='image'><img src='" + URL + "public/img/discover/" + submod + "/" + val.big_pic + "'><div class='bg'></div></div><div class='text'><div class='bg'></div><div class='title'><span>Touch Me.</span></div><div class='desc'><span>Hardware accelerated using CSS3 for supported iOS, Android and WebKit</span></div><div class='button'><span>Read More &rsaquo;</span></div></div></div>";

                $(".slider").append(item);
            });
        }

        // position slider
        $(".iosSlider").css("top", "100px").css("left" , "50px");


        $("#disc-hidden-left").click(function(event) {
            reset(3);
        });

        $("#disc-hidden-center").click(function(event) {
            reset(6);
        });

        $("#disc-hidden-right").click(function(event) {
            reset(2);
        });

  
        // pop up in discover module 
        $("#hot").click(function(event){
            addSlideItems(hotItems, "hot");
            $("#hot").attr("src", URL + 'public/img/discover/btn-hot-off.png');
        });

        $("#specials").click(function(event){
            $("#specials").attr("src", URL + 'public/img/discover/btn-specials-on.png');
        });

         $("#info").click(function(event){
            addSlideItems(infoItems, "info");
            $("#info").attr("src", URL + 'public/img/discover/btn-info-on.png');
        });

        $(".discover").click(function(event) {

            var selectedId = $(this).attr("id").split("-");
            var selectedGrp = selectedId[0];
            var selectedType = selectedId[1];
            var selectedItemId = selectedId[2];
            var items = selectedGrp == 'spotlight' ? spotlightItems : featureItems;

            if(selectedType == "chef's pick" || selectedGrp == 'feature'){
                $(".unlove").css("display", "inline");
            }else{
                $(".unlove").css("display", "none");
            }

            // get proper item based on array, udpate page 
            logUserActivity("in", "viewed_item", selectedItemId, "", function(){
                logUserActivity("out", "viewed_item", selectedItemId, "", function(){
                    $(".pop").modal({
                        position: ["5%"],
                        onShow: function (dialog){

                            var modal = this;
                            var popUpTimer = "";

                            $.each(items, function(index, val) {
                                if(val.name == selectedType){
                                    var items = val.items;
                                    $.each(items, function(index, val) {
                                        if(val.id == selectedItemId){
                                            $(".pop .title").html(val.name.toUpperCase());
                                            $(".pop .pic").attr('src', URL + 'public/img/discover/' + selectedGrp + '/' + val.big_pic);
                                            $(".pop .price").html(val.price);
                                            $(".pop .msg").html(val.description);

                                            // get love count from server 
                                            $.get(URL + 'mother/getLove/d/', {item_id: selectedItemId}, function(data, textStatus, xhr) {
                                                $(".love .count").html(data);
                                            });
                                        }
                                    });
                                }
                            });
                            
                            // exit button
                            $(".pop .quit").click(function(event) {
                                modal.close();
                            });

                            //Unlove button popup
                            $(".unlove").click(function(){
                                
                                popUpTimer = clearTimeout(popUpTimer);

                                logUserActivity("in", "unloved_item", selectedItemId, "", function(){
                                    logUserActivity("out", "unloved_item", selectedItemId, "", function(){
                                        $(".unlove-selection").show();
                                        $(".unlove-selection-btn").show();
                                    });
                                });
                            });

                            //Hiding the unlove button popup
                             $("#unlove-overlay").click(function(){
                               $(".unlove-selection").hide();
                            });

                             //Hiding on Cancel
                             $(".overlay-close").click(function(){
                                $(".unlove-selection").hide();
                             });

                            //Selecting an Option and closing the popup
                            $(".unlove-selection-btn").click(function(){           

                                // check for child class 
                                var childClass = $(this).attr("class").substring(21);
                                
                                if(childClass != 'overlay-close'){  
                                    var comm_id = $(this).attr("id");
                                    logUserActivity("in", "unloved_commented_item", selectedItemId, "", function(){
                                        logUserActivity("out", "unloved_commented_item", selectedItemId, "", function(){
                                            $.post(URL + 'mother/giveUnLove/d/', {item_id: selectedItemId, comment_id: comm_id}, function(data, textStatus, xhr) { 
                                                $(".unlove-selection-btn").hide();
                                                 // dismiss pop up after 5 seconds 
                                                popUpTimer = setTimeout(function(){
                                                    $(".unlove-selection").hide();
                                                }, 5000);
                                            });
                                        });
                                    });
                                }
                            });

                            //Hide when touching thanks msg
                            $("#thanks-unlove").click(function(event) {
                                 popUpTimer = clearTimeout(popUpTimer);
                                 $(".unlove-selection").hide();
                            });

                            // love button, increment love
                            $(".love").click(function(event) {

                                // clear lingering heart timer
                                heartTimer = clearTimeout(heartTimer);

                                if(heartCount < 10){

                                    heartCount++;

                                    var heartType = $(this).attr("class").substring(6);
                                    var url = heartType == 'love' ? URL + 'mother/giveLove/d/': URL + 'mother/giveUnLove/d/';
                                    var btnPressed = heartType == 'love' ? "btn-heart-pressed.png" : "btn-unheart-pressed.png";
                                    var btnUnpressed = heartType == 'love' ? "btn-heart-unpressed.png" : "btn-unheart-unpressed.png";
                                    var countClass = "." + heartType + " .count";  
                                    var imgClass = "." + heartType + " img";  

                                    logUserActivity("in", heartType + "d_item", selectedItemId, "", function(){
                                        logUserActivity("out", heartType + "d_item", selectedItemId, "", function(){
                                            $(imgClass).attr("src", URL + "public/img/discover/" + btnPressed);
                                            $.post(url, {item_id: selectedItemId}, function(data, textStatus, xhr) {
                                                $(imgClass).attr("src", URL + "public/img/discover/" + btnUnpressed);
                                                $(countClass).html(data);
                                            });
                                        });
                                    });
                                }else{
                                   
                                    // reset heart timer after 5 min of touching heart button  
                                    heartTimer = setTimeout(function(){
                                        heartCount = 0;
                                    }, 300000);
                                }
                            });
                        }
                    });
                }); 
            });
        });
    });   
}

function play(videos, venue){

    // play random video when video ends, make button clickable and control video with click - FHM
    var currentVideo = document.getElementById("play-item");
    var previous_vid = new Array(0, 0 ,0 ,0 ,0);
    var previous_position = 0;
    var status = 'play';
    var is_paused = false;
    var curr_vid_id = "";
    var finished_watching = "no";
    var first_vid = true;

    init("play");
    startInactive();

    // clear no fade timer because pb can only play one vid at a time 
    nofade_timer = clearInterval(nofade_timer);

    // clear sleep timer because pb dims in play section
    sleep_timer = clearTimeout(sleep_timer);
    
    $("#play-hidden-left").click(function(event) {
        reset(3);
    });

    $("#play-hidden-center").click(function(event) {
        reset(6);
    });

    $("#play-hidden-right").click(function(event) {
        reset(2);
    });

    // goes to home after 10 min of inactivity 
    function startInactive(){
        // reset inactive variable
        is_inactive = false;
        inactive_timer = clearTimeout(inactive_timer);
        inactive_timer = setTimeout(function(){
            is_inactive = true;
        }, 600000);
    }

    function pauseInactive(){
        // reset inactive variable
        pauseInactiveTimer = setTimeout(function(){
            $("#discover-btn").trigger("click");
        }, 180000);
    }
            
    // analytics exit point when video ends - FHM
    $(currentVideo).bind('ended', function(event) {
        curr_vid_id = $(this).attr("id");
        logUserActivity("out", "finished_watching", curr_vid_id, "", function(){
             finished_watching = "yes";
             if(is_inactive == true){
                $("#discover-btn").trigger("click");
             }else{
                 showRandomVideo();    
             }
        });
    });

    // clear sleep timer when video is playing - FHM
    $(currentVideo).bind('play', function(event) {
        pauseInactiveTimer = clearTimeout(pauseInactiveTimer);
    });

     $(currentVideo).bind('pause', function(event) {
        pauseInactive();
    });

    showRandomVideo(true);      

    $("#next").click(function(event) {
        // reset inactive timer
        startInactive();
        $(this).attr("src", URL  + "public/img/play/btn-next-press.png");
         setTimeout(function(){ 
            $("#next").attr("src", URL  + "public/img/play/btn-next.png");
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
                status = 'stop';
        }else if(status == 'stop' && $("#play-menu").css("display") == "block"){
                currentVideo.play();
                $("#play-menu").hide();
                status = 'play';
        }       
    });

    // displays a random video from list - FHM
    function showRandomVideo(position){

        // show menu if hidden (occurs when playing next video auto)
        if(vid_timer != ""){
            vid_timer = clearTimeout(vid_timer);    
        }

        if($("#play-menu").css("display") != "block"){
            $("#play-menu").show(function(){
                vid_timer = setTimeout(function(){
                    $("#play-menu").hide();
                 }, 5000);
            });
        }else{
            vid_timer = setTimeout(function(){
                $("#play-menu").hide();
            }, 5000);
        }

        first_vid = position;

        // reset status for new video - FHM
        status = 'play';

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