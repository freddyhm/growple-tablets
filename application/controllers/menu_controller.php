<?php

class Menu extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	// throws error for proper logging and error notification - FHM
	public function index(){

		try{
			$module_list = Module::find_all_by_parent_id('1');
		}catch(Exception $e){
			$this->handleError('danger', get_class().'_controller.php', 'Problem pulling menu info data database, ORM/DB problem.');
		}

		$menus = array();

		if(!empty($module_list)){
			// go through list of all items & submodules for menu module - FHM
			foreach ($module_list as $key => $submodule) {
				
				$menus[$submodule->id] = $submodule->to_array();

				try{
					$item_list = Item::find_all_by_module_id($submodule->id);	
				}catch(Exception $e){
					$this->handleError('danger', get_class().'_controller.php', 'Problem pulling item data from database, ORM/DB problem.');
				}
				
				foreach ($item_list as $item) {
					$menus[$submodule->id]['items'][$item->id] = $item->to_array(); 
				}
			}

			// check if first time in menu - FHM
			$first_time = Session::get('menu_first_time');
			$first_time = isset($first_time) ? 'No' : 'Yes'; 

			// get cart - FHM
			$cart = $this->getCart();
		
			$info = array('menus' => $menus, 'is_virgin' => $first_time, 'cart' => $cart);
		
			parent::$data = $info; 
			parent::index();

		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying menus and items.');
		}
	}

	// gets cart of items from client and adds to array of user carts - FHM
	public function addToCart(){

		// get cart from client - FHM
		$new_cart = $_POST['cart'];
		$new_cart['time'] = date('h:i:s', time());

		if(!empty($new_cart)){

			if(!isset($_SESSION['user_carts'])){
				$cart_list = array("user_carts" => array("carts" => array()));
			}
			
			//set new cart - FHM
			$_SESSION['user_carts']['carts'][] = $new_cart;

		}else{
			$this->handleError('warning', get_class().'_controller.php', 'Could not add cart.');
		}
	}

	// check for last cart or returns new own
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
}