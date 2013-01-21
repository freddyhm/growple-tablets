<?php

/* Base class for all controllers - FHM */
/* Took out analytic functions and places in Mother and Analytics.js - FHM */

class Controller {

	// used to send data to the view
	public static $data;
	// accessible to child objets, for custom rendering - FHM 
	protected static $view;

	// create view object
	public function __construct(){
		self::$view = new View();
	}
        
	// render view for single view based on controller
	public function index(){

	  	self::$view->render(get_class($this), self::$data);
	}

	// render for single view based on controller's method ex:start/add/ (add is a view)
	// also for views that fall under a grouping, ex: start/crud/add/  (add is a view part of the crud grouping)
	public function custom($view, $subview=null){
		self::$view->render($view, self::$data, $subview);
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
		//	mail('5199986123@sms.fido.ca', '', $error, '');
		//	mail('2267912634@msg.telus.com', '', $error, '');

		// redirect to temp page and send email msg to kevin and freddy - FHM
		if($error_action == 'quarantine'){

	//		mail('freddy.hm@growple.com', '', $error, '');
	//		mail('kevin.kim@growple.com', '', $error, '');

			// redirect to error page - FHM
			header('Location:' . URL . 'error' );
		}

		// log error in server - FHM
		error_log($error);
	}

	/*
	
	// resets the current user, starts a new user cycle - FHM
	public function newUserCycle(){

		if(Session::exist()){
			// create & set new user in session - FHM 
			$user = new User();
			$user->name = 'JohnJane';
			$user->venue_id = 1; // need to change depending on venue
			$user->usertype_id = 2; // need to change depending on login
		
			// save user id and add to new session, check if session has been reset properly - FHM
			if($user->save()){
				Session::set('user_id', $user->id);
				if(count(Session::getSession()) == 1 && $this->createUserPath($user->id)){
					return 'Success';
				}
			}else{
				$this->handleError('danger', 'controller.php', 'Problem saving new user on reset.');
			}	
		}	
	}

	public function endUserCycle(){

		if(Session::exist()){
			// save path, carts, and destroy/create a new session, will erase cart and path - FHM
			$this->saveUserPath();
			$this->cartCheckout();
			Session::destroy();

			// start new session and path, lazy loading for cart
			Session::init();
		}
	}

	// saves everything the user has in his carts to db - FHM
	public function cartCheckout(){

		$user_carts = Session::get('user_carts');
		$failure = 'false';

		if(!empty($user_carts)){

			foreach ($user_carts['carts'] as $cart) {

			$new_cart = new Cart();
			$new_cart->date = $cart['time'];
			$new_cart->size = $cart['size'];
			$new_cart->user_id = Session::get('user_id');
			$failure = $new_cart->save() ? $failure : 'true';

			foreach ($cart['items'] as $item) {
				$cart_item = new CartItem();
				$cart_item->cart_id = $new_cart->id;
				$cart_item->item_id = intval($item[0]);
				$failure = $cart_item->save() ? $failure : 'true';
				}
			}
			
			if($failure == 'false'){
			}else{
				$this->handleError('caution', 'controller.php', 'Problem saving cart and items in cartCheckout()');
			}
		}
	} 

	*/

	/*

	// analytics captures step's activity  - FHM
	public function logUserActivity($status, $action, $item_id){

		$current_act_key = 0;
		$current_step_key = 0;

		$old_path = Session::get('path');

		if(!isset($old_path)){
			$old_path = array();
		}

		$new_path = $old_path;

		$date = date('m/d/Y h:i:s a', time()); 

		// get current key for step, minus one taking account zero based index - FHM
		$current_step_key = isset($old_path['steps']) ? count($old_path['steps']) - 1 : 0 ;

		//check if a step has an activity array, count, if not set set - FHM
		if(isset($old_path['steps'][$current_step_key]['activities'])){
			$current_act_key = count($old_path['steps'][$current_step_key]['activities']);	
		}else{
			$new_path['steps'][$current_step_key]['activities'] = array();	
		}
		
		if(is_numeric($current_act_key) && is_numeric($current_step_key) && is_string($status) && is_string($action) && is_numeric($item_id)){

			//need to figure out if the last activiy has finished- FHM
			if($status == 'in'){
				// create new array with new key, keep 0 if first - FHM
				$new_path['steps'][$current_step_key]['activities'][$current_act_key] = array();
				$new_path['steps'][$current_step_key]['activities'][$current_act_key]['start'] = $date;
				$new_path['steps'][$current_step_key]['activities'][$current_act_key]['step_id'] = $current_step_key + 1;
				$new_path['steps'][$current_step_key]['activities'][$current_act_key]['name'] = $action;
				$new_path['steps'][$current_step_key]['activities'][$current_act_key]['item_id'] = $item_id;
			}else if($status == 'out'){
				// get last activity through the array's last key - FHM
				$last_act_key = $current_act_key - 1;
				$new_path['steps'][$current_step_key]['activities'][$last_act_key]['end'] = $date;
				$new_path['steps'][$current_step_key]['activities'][$last_act_key]['name'] = $action;
			}

			Session::set('path', $new_path);
			$saved_path = Session::get('path');

	        if(!isset($saved_path)){
	        	$this->handleError('caution', 'controller.php', 'Problem saving path in session variable in logUserPath()');
	        }

		}else{
			$this->handleError('caution', 'controller.php', 'Problem with inputted variables in logUserStep()');
		}
	}

	// analytics captures event/step  - FHM
	public function logUserStep($status, $module_id){

		$old_path = Session::get('path');

		if(!isset($old_path)){
			$old_path = array();
		}

		$new_path = $old_path;

		$date = date('m/d/Y h:i:s a', time()); 

		// get current key - FHM
		$current_key = isset($old_path['steps']) ? count($old_path['steps']) : 0 ;

		if(is_numeric($current_key) && is_string($status) && is_numeric($module_id)){

			//need to figure out if the last step has finished- FHM
			if($status == 'in'){
				
				// create new array with new key, keep 0 if first - FHM
				$new_path['steps'][$current_key]['start'] = $date;
				$new_path['steps'][$current_key]['module_id'] = $module_id;

			}else if($status == 'out'){
				// get last step through the array's last key - FHM
				$last_key = $current_key - 1;
				$new_path['steps'][$last_key]['end'] = $date;
			}
			
			Session::set('path', $new_path);
			$saved_path = Session::get('path');
		
	        if(!isset($saved_path)){
	        	$this->handleError('caution', 'controller.php', 'Problem saving path in session variable in logUserPath()');
	        }

		}else{
			$this->handleError('caution', 'controller.php', 'Problem with inputted variables in logUserStep()');
		}	
	}

	// takes in a user id and kicks-off a new path - FHM
 	public function createUserPath($user_id){

 		$date = date('m/d/Y h:i:s a', time());

 		// create new event with path variables - FHM
		$event = new Event();
		$event->name = 'Path started'; // Need to change to unique user ID later - FHM
		$event->start = $date;
		$event->user_id = $user_id;
		$event->eventcategory_id = 1; // This is 'path' - FHM
		
		if($event->save()){

			 // init the multi-array and partially set it - FHM
	        $new_path = array();
	        $new_path['steps'] = array();
	        $new_path['event_id'] = $event->id;
	        $new_path['start'] = $date; 

	        Session::set('path', $new_path);
	        $saved_path = Session::get('path');

	        if(!isset($saved_path)){
	        	$this->handleError('caution', 'controller.php', 'Problem saving path in session variable in createUserPath()');
	        }

	        return $saved_path;

		}else{
			$this->handleError('caution', 'controller.php', 'Problem creating event in createUserPath()');
		}
	}

	// saves user path in database - FHM
	public function saveUserPath(){

		// unserialize path variable and get current time - FHM
		$date = date('m/d/Y h:i:s a', time());

		$path = Session::get('path');
		$failure = 'false';

		if(!empty($path)){

			// update current event with end time  - FHM
			$ev_id = $path['event_id'];
			
			try{
				$event = Event::find($ev_id);
			}catch (Exception $e){
				$this->handleError('warning', get_class().'_controller.php', 'could not find event in db when saving user path, analytics have been compromised');
			}

			if(!empty($event)){

				$event->end = $date;
				$failure = $event->save() ? $failure : 'true';

				// go through inner arrays and and save steps and activities - FHM
				foreach ($path['steps'] as $step) {
					
					$new_step = new Step();
					$new_step->event_id = $event->id;
					$new_step->start = isset($step['start']) ? $step['start'] : "";
					$new_step->end = isset($step['end']) ? $step['end'] : $step['start'];
					$new_step->module_id = $step['module_id'];
					$failure = $new_step->save() ? $failure : 'true';

					if(!empty($step['activities'])){

						foreach ($step['activities'] as $activity) {	
							$new_activity = new Activity();
							$new_activity->name = $activity['name'];
							$new_activity->start = isset($activity['start']) ? $activity['start'] : "";
							$new_activity->end = isset($activity['end']) ? $activity['end'] : $activity['start'];
							$new_activity->step_id = $new_step->id;
							$new_activity->item_id = isset($activity['item_id']) ? $activity['item_id'] : '';
							$failure = $new_activity->save() ? $failure : 'true';
						}
					}
				}

				if($failure == 'false'){
					echo 'Success';				
				}else{
					$this->handleError('caution', 'controller.php', 'Problem saving user path in saveUserPath()');
				}
			}else{
				$this->handleError('warning', get_class().'_controller.php', 'event is empty');
			}

		}else{
			$this->handleError('caution', 'controller.php', 'User path is empty');
		}
	}
	*/
}