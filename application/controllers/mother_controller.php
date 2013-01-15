<?php

class Mother extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function isOnline(){
		echo "Success";
	}

	public function saveBasket(){

		$basket = $_POST['user_basket'];
		$old_basket = Session::get('user_basket');

		// in case of new basket - FHM
		if(!$old_basket){
			$old_basket = array();
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

	// gets cart of items from client and adds to array of user carts - FHM
	public function addToCart(){

		// get cart from client, set remaning attributes - FHM
		$new_cart['items'] = $_POST['cart'];
		$new_cart['time'] = date('m/d/Y h:i:s a', time());
		$new_cart['size'] = count($new_cart['items']);

		if(!empty($new_cart)){
			//set new cart - FHM
			$_SESSION['user_carts']['carts'][] = $new_cart;
			Session::set('user_basket', '');

		}else{
			$this->handleError('warning', get_class().'_controller.php', 'Could not add cart.');
		}
	}

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
}