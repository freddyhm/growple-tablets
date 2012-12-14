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

		$menues = array();

		if(!empty($module_list)){
			// go through list of all items & submodules for menu module - FHM
			foreach ($module_list as $key => $submodule) {
				
				$menues[$key] = $submodule->to_array();

				try{
					$item_list = Item::find_all_by_module_id($submodule->id);	
				}catch(Exception $e){
					$this->handleError('danger', get_class().'_controller.php', 'Problem pulling item data from database, ORM/DB problem.');
				}
				
				foreach ($item_list as $item) {
					$menues[$key]['items'][] = $item->to_array(); 
				}
			}

			// check if first time in menu - FHM
			$first_time = Session::get('menu_first_time');
			$first_time = isset($first_time) ? 'No' : 'Yes'; 
		
			$info = array('menues' => $menues, 'is_virgin' => $first_time);
			parent::$data = $info; 
			parent::index();

		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying menues and items.');
		}
	}

	// gets cart of items from client and adds to array of user carts - FHM
	//need to test - FHM
	public function addToCart(){

		$user_cart = Session::get('user_cart');

		if(isset($user_cart)){
			$user_cart = serialize($user_cart);
		}else{
			$user_cart = array();
		}

		$user_cart[] = $_POST['cart'];
	
		if(empty($user_cart)){
			$this->handleError('warning', get_class().'_controller.php', 'Could not add item to cart.');
		}else{
			Session::set('user_cart', $user_cart);	
		}		
	}
}