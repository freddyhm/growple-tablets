// Analytic Functions: track cart items, store user baskets, and save paths - FHM
// * Replaces server-side tracking * - FHM
function startAnalytics(callback){

	var path = $.parseJSON($.jStorage.get("path"));

	if(path == undefined){
	    path = createUserPath();
	    $.jStorage.set("path", JSON.stringify(path));   
	}

	if(callback != undefined){
	 	callback();
	 }
}

function logUserStep(status, module_id, callback){

    // get path in localstorage
    var old_path = $.parseJSON($.jStorage.get("path"));
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

    $.jStorage.set("path", JSON.stringify(new_path));

	 if(callback != undefined){
	 	callback();
	 }
}

function logUserActivity(status, action, item_id, callback){

	var current_act_key = 0;
	var current_step_key = 0;

	var old_path = $.parseJSON($.jStorage.get("path"));
	var new_path = old_path;
	var date = new Date().toString();

	// get current step and activity key based on lengths - FHM
    current_step_key = old_path.steps.length == 0 ? 0: old_path.steps.length - 1;
    current_act_key = old_path.steps[current_step_key].activities.length;

	//need to figure out if the last activiy has finished- FHM
	if(status == 'in'){
		// create new array with new key, keep 0 if first - FHM
		new_path.steps[current_step_key].activities[current_act_key] = {"start" : "", "action" : "", "item_id" : "", "end": ""}; 
		new_path.steps[current_step_key].activities[current_act_key].start = date;
		new_path.steps[current_step_key].activities[current_act_key].action = action;
		new_path.steps[current_step_key].activities[current_act_key].item_id = item_id;
	}else if(status == 'out'){

		// in case activity loses it's 'in' (when clicking really fast, in and out of module), we re-init the activity object - FHM
		if(new_path.steps[current_step_key].activities == ""){
			new_path.steps[current_step_key].activities[current_act_key] = {"start" : "", "action" : "", "item_id" : "", "end": ""}; 
			new_path.steps[current_step_key].activities[current_act_key].start = date;
			new_path.steps[current_step_key].activities[current_act_key].item_id = item_id;

			current_act_key = old_path.steps[current_step_key].activities.length;
		};

		// get last activity through the array's last key - FHM
		var last_act_key = current_act_key - 1;
		new_path.steps[current_step_key].activities[last_act_key].action = action 
		new_path.steps[current_step_key].activities[last_act_key].end = date;
	}
	
	 $.jStorage.set("path", JSON.stringify(new_path));

	 if(callback != undefined){
	 	callback();
	 }
}

function createUserPath(callback){
    var date = new Date().toString();
     //init the multi-array and partially set it - FHM
    var new_event = {"steps": [], "start": date, "end": ""};
  
    if(callback != undefined){
	 	callback();
	}else
	{
		return new_event;
	}
}

function saveUserPath(callback){

    var date = new Date().toString();
    var path = $.parseJSON($.jStorage.get("path"));
    path.end = date;
    $.jStorage.set("path", JSON.stringify(path));

    if(callback != undefined){
	 	callback();
	}
}

function saveBasket(user_basket, callback){

	var basket = user_basket;
	$.jStorage.set('user_basket', JSON.stringify(basket));

	if(callback != undefined){
	 	callback();
	}
}

function getBasket(){

	var basket = $.parseJSON($.jStorage.get("user_basket"));

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
	var user_carts = $.parseJSON($.jStorage.get("user_carts"));

	// if cart is empty (first user cycle), init carts - FHM
	if(user_carts == null){
		user_carts = {"carts" :[]};
	}

	// push new cart and set it - FHM
	user_carts.carts.push(new_cart); 
	$.jStorage.set("user_carts", JSON.stringify(user_carts));

	if(callback != undefined){
	 	callback();
	}
}

function sendToServer(callback){

	var path = $.parseJSON($.jStorage.get("path"));
	var carts = $.parseJSON($.jStorage.get("user_carts"));

	$.post( URL + "mother/saveAnalytics/d/", {user_path: path, user_carts : carts}, function(data){
		callback();
	});
}

function resetAnalytics(callback){
	$.jStorage.deleteKey("path");
	$.jStorage.deleteKey("user_carts");
	$.jStorage.deleteKey("user_basket");
	$.jStorage.deleteKey("promo_item");

	if(callback != undefined){
	 	callback();
	}
}

function newCycle(callback){
	createUserPath(function(){
		if(callback != undefined){
	 		callback();
		}
	});
}

function endCycle(callback){
	saveUserPath(function(){
		sendToServer(function(){
			resetAnalytics(function(){
				if(callback != undefined){
	 				callback();
				}
			});
		});
	});
}