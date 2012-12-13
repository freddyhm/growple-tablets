<?php

/* Seed class for all controllers - FHM */

class Seed extends Controller {

	// create view object
	public function __construct() 
	{
	}
 
	// resets the current user, starts a new user cycle - FHM
	public function resetUser(){

		if(Session::exist()){
			
			// save path, destroy and create a new session - FHM
			$this->saveUserPath();
			Session::destroy();
			Session::init();

			// create & set new user in session - FHM 
			$user = new User();
			$user->name = '';
			$user->save();

			// save user id, check if session has been reset properly - FHM
			if(!$user->save()){
				Session::set('user_id', $user->id);
				if(count(Session::getSession()) == 1){
					echo 'Success';
				};	
			}else{
				$this->handleError('danger', 'seed_controller.php', 'Problem saving new user on reset.');
			}	
		}	
	}

	// throws error for proper logging and error notification - FHM
	public function handleError($level, $filename, $desc){

		// build error output - FHM
		$date = date('m/d/Y h:i:s a', time());
		$error_level = $level;
		$error_desc = $desc;
		$error_file = $filename;
		$error_action = $error_level == 'danger' ? 'quarantine' : '';
		$error = $date.' - '.$error_file.' : '.$error_desc.'-'.$error_action.'-'.$error_level;

		// send txt msg to kevin and freddy - FHM
		// mail('5199986123@pcs.rogers.com', '', $error, '');
		mail('2267912634@msg.telus.com', '', $error, '');

		// redirect to temp page and send email msg to kevin and freddy - FHM
		if($error_action == 'quarantine'){

			mail('freddy.hm@growple.com', '', $error, '');
			//mail('kevin.kim@growple.com', '', $error, '');

			// redirect to temp page - FHM
			//header('Location: http://www.google.com/');
		}

		// log error in server - FHM
		error_log($error);
	}

	// analytics captures event/step  - FHM
	public function logStep($location, $activity){

		$date = date('m/d/Y h:i:s a', time());
		$user_id = Session::get('user_id');

		$path['start']['steps'][array][activities]
		['end'];

		$new_path = array('user_id', 'start', 
						  'steps' => array('name', 'module_id', 
						  				   'activities' => array('name', 'start', 'end', 'item_id')), 
						  'end');

		Session::set('path') = $new_path;
	}

	public function saveUserPath(){

		// unserialize path variable and use date as user's name for now - FHM 
		$date = date('m/d/Y h:i:s a', time());
		$path = serialize(Session::get('path'));
		$failure = False;

		if(!empty($path)){

			// create new event with path variables - FHM
			$event = new Event();
			$event->name = $date; // Need to change to unique user ID later - FHM
			$event->start = $path['start'];
			$event->end = $path['end'];
			$event->user_id = Session::get('user_id');
			$event->eventcategory_id = 1 // This is 'path' - FHM
			$failure = $event->save() ? $failure : True;

			// go through inner arrays and and save steps and activities - FHM
			foreach ($path['steps'] as $step) {
				
				$new_step = new Step();
				$new_step->name = $step['name'];
				$new_step->event_id = $event->id;
				$new_step->module_id = $step['module_id'];
				$failure = $new_step->save() ? $failure : True;

				if(!empty($path['steps']['activities'])){
					foreach ($path['steps']['activities'] as $activity) {	
						$new_activity = new Activity();
						$new_activity->name = $activity['name'];
						$new_activity->start = $activity['start'];
						$new_activity->end = $activity['end'];
						$new_activity->step_id = $new_step->id;
						$new_activity->item_id = $activity['item_id'];
						$new_activity->save();
						$failure = $new_activity->save() ? $failure : True;
					}
				}
			}

			if(!$failure){
				echo 'Success';				
			}else{
				$this->handleError('caution', 'seed_controller.php', 'Problem saving user path in saveUserPath()');
			}
		}else{
			$this->handleError('caution', 'seed_controller.php', 'User path is empty');
		}
	}
}