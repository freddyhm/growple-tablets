<?php

// Interacts w/analytics.js - FHM

class Mother extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	// add one to love count and return new count
	public function giveLove(){

		$item_id = $_POST['item_id'];
		$item = Item::find($item_id);
		$new_love = $item->love + 1;
		$item->love = $new_love;
		$item->save();

		echo $new_love;
	}

	// return love count
	public function getLove(){

		$item_id = $_GET['item_id'];
		$item = Item::find($item_id);

		echo $item->love;
	}

	public function giveUnLove(){

		$date = date('Y-m-d H:i:s');
		$comment_id = $_POST['comment_id'];
		$item_id = $_POST['item_id'];

		$new_comment_item = new CommentItem();
		$new_comment_item->date = $date;
		$new_comment_item->comment_id = $comment_id;
		$new_comment_item->item_id = $item_id;
		$new_comment_item->save();

		echo 'Success';
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
				$cart_item->promo_id = intval($item[4]);
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
					$new_step->start = isset($step['start']) && $step['start'] != ""  ? date('Y-m-d H:i:s', strtotime($step['start'])) : date('Y-m-d H:i:s');
					$new_step->end = isset($step['end']) && $step['end'] != "" ? date('Y-m-d H:i:s', strtotime($step['end'])) : date('Y-m-d H:i:s');
					$new_step->module_id = $step['module_id'];
					$failure = $new_step->save() ? $failure : 'true';

					if(!empty($step['activities'])){

						foreach ($step['activities'] as $activity) {	
							$new_activity = new Activity();
							$new_activity->name = $activity['action'];
							$new_activity->start = isset($activity['start']) && $activity['start'] != ""  ? date('Y-m-d H:i:s', strtotime($activity['start'])) : date('Y-m-d H:i:s');
							$new_activity->end = isset($activity['end']) && $activity['end'] != ""  ? date('Y-m-d H:i:s', strtotime($activity['end'])) :date('Y-m-d H:i:s');
							$new_activity->step_id = $new_step->id;
							$new_activity->item_id = isset($activity['item_id']) ? $activity['item_id'] : '';
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
}