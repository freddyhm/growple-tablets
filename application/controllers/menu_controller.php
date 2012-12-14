<?php

class Menu extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	// throws error for proper logging and error notification - FHM
	public function index(){

		$module_list = Module::find_all_by_parent_id('1');
		$menues = array();

		// go through list of all items & submodules for menu module - FHM
		foreach ($module_list as $key => $submodule) {
			
			$menues[$key] = $submodule->to_array();

			$item_list = Item::find_all_by_module_id($submodule->id);

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
	}

	public function cartCheckout(){

	}
}