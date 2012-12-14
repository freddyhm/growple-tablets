<?php

/* Base class for all controllers - FHM */

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
		mail('5199986123@sms.fido.ca', '', $error, '');
		mail('2267912634@msg.telus.com', '', $error, '');

		// redirect to temp page and send email msg to kevin and freddy - FHM
		if($error_action == 'quarantine'){

			mail('freddy.hm@growple.com', '', $error, '');
			//mail('kevin.kim@growple.com', '', $error, '');

			// redirect to error page - FHM
			header('Location:' . URL . 'error' );
		}

		// log error in server - FHM
		error_log($error);
	}
 
	// resets the current user, starts a new user cycle - FHM
	public function resetUser(){

		if(Session::exist()){
			
			// save path, destroy and create a new session - FHM
			$this->saveUserPath();
			$this->cartCheckout();
			Session::destroy();
			Session::init();

			// create & set new user in session - FHM 
			$user = new User();
			$user->name = '';
			$user->save();

			// save user id, check if session has been reset properly - FHM
			if(!$user->save()){
				Session::set('user_id', $user->id);
				if(count(Session::getSession()) == 1 && $this->createUserPath($user->id)){
					echo 'Success';
				}else{
					$this->handleError('warning', 'seed_controller.php', 'Problem setting user session variable and/or creating user path.');
				}	
			}else{
				$this->handleError('danger', 'seed_controller.php', 'Problem saving new user on reset.');
			}	
		}	
	}

	// need to test - FHM
	// saves everything the user has in his carts to db - FHM
	private function cartCheckout(){

		$user_carts = unserialize(Session::get('user_carts'));
		$failure == 'false';

		if(!empty($user_carts)){

			foreach ($user_carts as $cart) {
			
			$cart = new Cart();
			$cart->date = $cart['date'];
			$cart->size = $cart['size'];
			$cart->user_id = Session::get('user_id');
			$failure = $cart->save() ? $failure : 'true';

			foreach ($cart['items'] as $item) {
				$cart_item = new CartItem();
				$cart_item->cart_id = $cart->id;
				$cart_item->item_id = $item['id'];
				$failure = $cart_item->save() ? $failure : 'true';
				}
			}

			if(!$failure){
				echo 'Success';				
			}else{
				$this->handleError('caution', 'controller.php', 'Problem saving cart and items in cartCheckout()');
			}
		}else{
			$this->handleError('caution', 'controller.php', 'Cart was empty, could be no orders or session error');
		}
	} 

	// need to test - and rebuild - FHM
	// analytics captures event/step  - FHM
	public function logUserStep($location, $status){

		
	}

	// need to test - FHM
	public function logUserActivity($status){

	}

	// need to test - FHM
	// takes in a user id and kicks-off a new path - FHM
 	private function createUserPath($user_id){

 		$date = date('m/d/Y h:i:s a', time());

        // init the multi-array and partially set it - FHM
        $new_path = array('user_id', 'start', 
                                          'steps' => array('name', 'module_id', 
                                                            'activities' => array('name', 'start', 'end', 'item_id')), 
                                          'end');
        $new_path['user_id'] = $user_id;
        $new_path['start'] = $date; 

        Session::set('path', serialize($new_path));
	}

	// need to test - FHM
	public function saveUserPath(){

		// unserialize path variable and use date as user's name for now - FHM 
		$date = date('m/d/Y h:i:s a', time());
		$path = unserialize(Session::get('path'));
		$failure == 'false';

		if(!empty($path)){

			// create new event with path variables - FHM
			$event = new Event();
			$event->name = $date; // Need to change to unique user ID later - FHM
			$event->start = $path['start'];
			$event->end = $path['end'];
			$event->user_id = Session::get('user_id');
			$event->eventcategory_id = 1; // This is 'path' - FHM
			$failure = $event->save() ? $failure : 'true';

			// go through inner arrays and and save steps and activities - FHM
			foreach ($path['steps'] as $step) {
				
				$new_step = new Step();
				$new_step->name = $step['name'];
				$new_step->event_id = $event->id;
				$new_step->module_id = $step['module_id'];
				$failure = $new_step->save() ? $failure : 'true';

				if(!empty($path['steps']['activities'])){
					foreach ($path['steps']['activities'] as $activity) {	
						$new_activity = new Activity();
						$new_activity->name = $activity['name'];
						$new_activity->start = $activity['start'];
						$new_activity->end = $activity['end'];
						$new_activity->step_id = $new_step->id;
						$new_activity->item_id = $activity['item_id'];
						$failure = $new_activity->save() ? $failure : 'true';
					}
				}
			}

			if(!$failure){
				echo 'Success';				
			}else{
				$this->handleError('caution', 'controller.php', 'Problem saving user path in saveUserPath()');
			}
		}else{
			$this->handleError('caution', 'controller.php', 'User path is empty');
		}
	}
}