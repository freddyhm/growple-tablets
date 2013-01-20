
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

    callback();
}

function logUserActivity(status, action, item_id, callback){

	var current_act_key = 0;
	var current_step_key = 0;

	var old_path = $.parseJSON($.cookie("path"));
	var new_path = old_path;
	var date = new Date().toString();

	// get current key for step, minus one taking account zero based index - FHM
	var current_step_key = old_path[0] != undefined ? old_path[0].length - 1: 0;

	
	//check if a step has an activity array, count, if not set set - FHM
	if(old_path[0][current_step_key][0] instanceof Array){
		current_act_key = old_path[0][current_step_key][0].length;	
	}else{
		new_path[0][current_step_key][0] = new Array();
	}

	//need to figure out if the last activiy has finished- FHM
	if(status == 'in'){
		// create new array with new key, keep 0 if first - FHM
		new_path[0][current_step_key][0][current_act_key] = new Array();
		new_path[0][current_step_key][0][current_act_key][0] = date;
		new_path[0][current_step_key][0][current_act_key][1] = current_step_key + 1;
		new_path[0][current_step_key][0][current_act_key][2] = action;
		new_path[0][current_step_key][0][current_act_key][3] = item_id;
	}else if(status == 'out'){
		// get last activity through the array's last key - FHM
		var last_act_key = current_act_key - 1;
		new_path[0][current_step_key][0][last_act_key][2] = action;
		new_path[0][current_step_key][0][last_act_key][4] = date;
	}

	 $.cookie("path", JSON.stringify(new_path));

   	 callback();
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