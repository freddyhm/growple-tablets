
function startAnalytics(callback){

	var path = $.parseJSON($.cookie("path"));
	var path_list = $.parseJSON($.cookie("path_list"));

	if(path == undefined){
	    path = createUserPath();

	    $.cookie("path", JSON.stringify(path));   
	}

	if(path_list == undefined){
		path_list = new Array();
		path_list.push(path);
		$.cookie("path_list", JSON.stringify(path_list));
	}

	
	alert(JSON.stringify(path));

	callback();
}

function logUserStep(status, module_id, callback){

    // get path in cookie
    var old_path = $.parseJSON($.cookie("path"));
    var new_path = old_path;
    var date = new Date().toString();

    // get current key - FHM
    var current_key = old_path.steps.length;

    if(new_path.steps[current_key] == undefined){
        new_path.steps[current_key] = {"start" : "", "module_id" : "", "end" : ""}; 
     }

    //need to figure out if the last step has finished- FHM
    if(status == 'in'){
      //create new array with new key, keep 0 if first - FHM
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
    }else{
    	new_path.steps[current_step_key] = {"activities": []};
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
    path[2] = date;

    $.cookie("path", JSON.stringify(path));
}

function endCycle(){
	saveUserPath();



	$.cookie("path_list")
}

function newCycle(){
	createUserPath();	
}

function destroyAnalytics(){
	$.removeCookie("path_list");
	$.removeCookie("path");
}