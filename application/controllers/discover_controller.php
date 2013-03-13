<?php

class Discover extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){


		try{
			$module_list = Module::find_all_by_parent_id('1');
		}catch(Exception $e){
			$this->handleError('danger', get_class().'_controller.php', 'Problem pulling discover data database, ORM/DB problem.');
		}

		$discover_items = array();

		if(!empty($module_list)){
			// go through list of all items & submodules for menu module - FHM
			foreach ($module_list as $key => $submodule) {
				
				$discover_items[$submodule->name] = $submodule->to_array();

				try{
					$item_list = Item::find_all_by_module_id($submodule->id);	
				}catch(Exception $e){
					$this->handleError('danger', get_class().'_controller.php', 'Problem pulling item data from database, ORM/DB problem.');
				}
				
				foreach ($item_list as $item) {
					$discover_items[$submodule->name]['items'][] = $item->to_array(); 
				}
			}

			$info = array('items' => $discover_items, 'venue' => Session::get('venue'));
			parent::$data = $info; 

		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying menus and items.');
		}

		parent::index();
	}
}