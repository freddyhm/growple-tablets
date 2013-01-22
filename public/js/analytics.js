
// Analytic Functions: track cart items, store user baskets, and save paths - FHM
// * Replaces server-side tracking * - FHM

function startAnalytics(callback){

	var path = $.parseJSON($.cookie("path"));
	var path_list = $.parseJSON($.cookie("path_list"));

	if(path == undefined){
	    path = createUserPath();
	    $.cookie("path", JSON.stringify(path));   
	}

	if(callback != undefined){
	 	callback();
	 }
}

function logUserStep(status, module_id, callback){

    // get path in cookie
    var old_path = $.parseJSON($.cookie("path"));
    var new_path = old_path;
    var date = new Date().toString();

    // get current key - FHM
    var current_key = old_path.steps.length ? old_path.steps.length : 0;

    //need to figure out if the last step has finished- FHM
    if(status == 'in'){
      //create new array with new key, keep 0 if first - FHM
      new_path.steps[current_key] = {"start" : "", "module_id" : "", "end" : "", "activities" : []}; 
      new_path.steps[current_key].start = date;
      new_path.steps[current_key].module_id = module_id;

    }else if(status == 'out'){
        // get last step through the array's last key - FHM
       last_key = current_key - 1;
       new_path.steps[last_key].end = date;
    }

    $.cookie("path", JSON.stringify(new_path));

    
	 if(callback != undefined){
	 	callback();
	 }
}

function logUserActivity(status, action, item_id, callback){

	var current_act_key = 0;
	var current_step_key = 0;

	var old_path = $.parseJSON($.cookie("path"));
	var new_path = old_path;
	var date = new Date().toString();

	// get current key - FHM
    var current_step_key = old_path.steps.length - 1;

	if(old_path.steps[current_step_key].activities != undefined){
       current_act_key = old_path.steps[current_step_key].activities.length;
    }

	//need to figure out if the last activiy has finished- FHM
	if(status == 'in'){
		// create new array with new key, keep 0 if first - FHM
		new_path.steps[current_step_key].activities[current_act_key] = {"start" : "", "action" : "", "item_id" : "", "end": ""}; 
		new_path.steps[current_step_key].activities[current_act_key].start = date;
		new_path.steps[current_step_key].activities[current_act_key].action = action;
		new_path.steps[current_step_key].activities[current_act_key].item_id = item_id;
	}else if(status == 'out'){

		// get last activity through the array's last key - FHM
		var last_act_key = current_act_key - 1;
		new_path.steps[current_step_key].activities[last_act_key].action = action 
		new_path.steps[current_step_key].activities[last_act_key].end = date;
	}
	
	 $.cookie("path", JSON.stringify(new_path));

	 if(callback != undefined){
	 	callback();
	 }
}

function createUserPath(){
    var date = new Date().toString();
     //init the multi-array and partially set it - FHM
    var new_event = {"steps": [], "start": date, "end": ""};
  
    return new_event;
}

function saveUserPath(){

    var date = new Date().toString();
    var path = $.parseJSON($.cookie("path"));
    path.end = date;
    $.cookie("path", JSON.stringify(path));
}

function saveBasket(user_basket, callback){

	var basket = user_basket;
	var old_basket = $.parseJSON($.cookie("user_basket"));
	
	// in case of new basket - FHM
	if(old_basket == undefined){
		basket = new Array();
	}

	$.cookie('user_basket', JSON.stringify(basket));

	if(callback != undefined){
	 	callback();
	}
}

function getBasket(){

	var basket = $.parseJSON($.cookie("user_basket"));

	if(!basket){
		basket = "";
	}
	return basket;
}

// gets cart of items from client and adds to array of user carts - FHM
function addToCart(cart, callback){

	var date = new Date().toString();
	var new_cart = {"items": cart, "time" : date, "size" : cart.length};

	// add cart and set it - FHM
	var user_carts = $.parseJSON($.cookie("user_carts"));

	// if cart is empty (first user cycle), init carts - FHM
	if(user_carts == null){
		user_carts = {"carts" :[]};
	}

	// push new cart and set it - FHM
	user_carts.carts.push(new_cart); 
	$.cookie("user_carts", JSON.stringify(user_carts));

	if(callback != undefined){
	 	callback();
	}
}

function sendToServer(callback){

	var path = $.parseJSON($.cookie("path"));
	var carts = $.parseJSON($.cookie("user_carts"));

	$.post( URL + "mother/saveAnalytics/d/", {user_path: path, user_carts : carts}, function(data){
		callback();
	});
}

function resetAnalytics(){
	$.removeCookie("path");
	$.removeCookie("user_carts");
}

function newCycle(callback){
	createUserPath();

	if(callback != undefined){
	 	callback();
	}	
}

function endCycle(callback){
	saveUserPath();
	sendToServer(function(){
		resetAnalytics();
	});

	if(callback != undefined){
	 	callback();
	}
}