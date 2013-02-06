<?php

// Interacts w/analytics.js - FHM

class Mother extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function isOnline(){
		echo "Success";
	}

	public function saveAnalytics(){

		$user_path = $_POST['user_path'];
		$user_carts = $_POST['user_carts'];

		$user = $this->createUser();

		$this->cartCheckout($user_carts, $user);
		$this->saveUserPath($user_path, $user);
	}

	public function createUser(){

		$new_user = new User();
		$new_user->name = "JohnJane";
		$new_user->venue_id = 1; // need to change - FHM
		$new_user->usertype_id = 2;
		$new_user->save();

		return $new_user;
	}

	public function cartCheckout($user_carts, $user){

		$failure = 'false';

		if(!empty($user_carts)){

			foreach ($user_carts['carts'] as $cart) {

			$new_cart = new Cart();
			// convert JS string to time and then format date - FHM
			$new_cart->date = date('Y-m-d H:i:s', strtotime($cart['time']));
			$new_cart->size = $cart['size'];
			$new_cart->user_id = $user->id;
			$failure = $new_cart->save() ? $failure : 'true';

			foreach ($cart['items'] as $item) {
				$cart_item = new CartItem();
				$cart_item->cart_id = $new_cart->id;
				$cart_item->item_id = intval($item[0]);
				$failure = $cart_item->save() ? $failure : 'true';
				}
			}
			
			if($failure != 'false'){
				$this->handleError('caution', 'controller.php', 'Problem saving cart and items in cartCheckout()');
			}
		}
	} 

	public function saveUserPath($path, $user){

		// unserialize path variable and get current time - FHM
		$failure = 'false';

		if(!empty($path)){

			// create event - FHM
			$new_event = new Event();
			$new_event->name = "Path started";
			$new_event->start = date('Y-m-d H:i:s', strtotime($path['start']));
			$new_event->end = date('Y-m-d H:i:s', strtotime($path['end']));
			$new_event->user_id = $user->id;
			$new_event->eventcategory_id = 1; // need to change - FHM
			
			$failure = $new_event->save() ? $failure : 'true';

			if(!empty($new_event)){

				// go through inner arrays and and save steps and activities - FHM
				foreach ($path['steps'] as $step) {
					
					$new_step = new Step();
					$new_step->event_id = $new_event->id;
					$new_step->start = isset($step['start']) ? date('Y-m-d H:i:s', strtotime($step['start'])) : "";
					$new_step->end = isset($step['end']) ? date('Y-m-d H:i:s', strtotime($step['end'])) : date('Y-m-d H:i:s', strtotime($step['start']));
					$new_step->module_id = $step['module_id'];
					$failure = $new_step->save() ? $failure : 'true';

					if(!empty($step['activities'])){

						foreach ($step['activities'] as $activity) {	
							$new_activity = new Activity();
							$new_activity->name = $activity['action'];
							$new_activity->start = isset($activity['start']) ? date('Y-m-d H:i:s', strtotime($activity['start'])) : "";
							$new_activity->end = isset($activity['end']) ? date('Y-m-d H:i:s', strtotime($activity['end'])) : "";
							$new_activity->step_id = $new_step->id;
							$new_activity->item_id = isset($activity['item_id']) ? $activity['item_id'] : '';
							$new_activity->test_id = isset($activity['test_id']) ? $activity['test_id'] : '';
							$failure = $new_activity->save() ? $failure : 'true';
						}
					}
				}

				if($failure != 'false'){
					$this->handleError('caution', 'controller.php', 'Problem saving user path in saveUserPath()');
				}
			}else{
				$this->handleError('warning', get_class().'_controller.php', 'event is empty');
			}

		}else{
			$this->handleError('caution', 'controller.php', 'User path is empty');
		}
	}

	/*
	public function saveBasket(){

		$basket = $_POST['user_basket'];
		$old_basket = Session::get('user_basket');

		// in case of new basket - FHM
		if(!$old_basket){
			$basket = array();
		}

		Session::set('user_basket', $basket);
	}

	public function getBasket(){

		$basket = Session::get('user_basket');

		if(!isset($basket)){
			$basket = "";
		}
		
		echo json_encode($basket);
	}

	/*
	// gets cart of items from client and adds to array of user carts - FHM
	public function addToCart(){

		// get cart from client, set remaning attributes - FHM
		$new_cart['items'] = $_POST['cart'];
		$new_cart['time'] = date('m/d/Y h:i:s a', time());
		$new_cart['size'] = count($new_cart['items']);

		if(!empty($new_cart)){
			//set new cart - FHM
			$_SESSION['user_carts']['carts'][] = $new_cart;
		}else{
			$this->handleError('warning', get_class().'_controller.php', 'Could not add cart.');
		}
	}
	*/

	/*

	// check for last cart or returns new one - FHM
	private function getCart(){

		// check if there's an exsiting cart - FHM
		$cart_list = Session::get('user_carts');
		$new_cart = array("carts" => array());

		if(isset($carts)){
			// get last cart - FHM 
			$last = count($cart_list) - 1;

			if($last == 0){
				$cart = $cart_list['carts'];
			}else{
				$cart = $cart_list['carts'][$last];
			}

			$new_cart = $cart;
		}else{
			Session::set('user_carts', $new_cart);
		}

		return $new_cart;
	}
	

	public function logStep($status, $mod_id){

		$this->logUserStep($status, $mod_id);	
	}

	public function logActivity($status, $action, $item_id = null){
		$this->logUserActivity($status, $action, $item_id);
	}

	public function newCycle(){
		echo $this->newUserCycle();
	}

	public function endCycle(){
		echo $this->endUserCycle();
	}
	*/
}