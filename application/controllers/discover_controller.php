<?php

class Discover extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){

		$feature_list = Module::find_all_by_parent_id('4');
		$spotlight_list = Module::find_all_by_parent_id('3');
		$comment_list = Comment::find("all");

		$feature_items = array();
		$spotlight_items = array();
		$comments = array();

		if(!empty($feature_list)){
			// go through list of all items & submodules for menu module - FHM
			foreach ($feature_list as $key => $submodule) {

				$feature_items[$submodule->name] = $submodule->to_array();
				$item_list = Item::find_all_by_module_id($submodule->id);	

				foreach ($item_list as $item) {
					$feature_items[$submodule->name]['items'][] = $item->to_array(); 
				}
			}
		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying menus and items.');
		}

		if(!empty($spotlight_list)){
			// go through list of all items & submodules for menu module - FHM
			foreach ($spotlight_list as $key => $submodule) {
				
				$spotlight_items[$submodule->name] = $submodule->to_array();
				$item_list = Item::find_all_by_module_id($submodule->id);	
				
				foreach ($item_list as $item) {
					$spotlight_items[$submodule->name]['items'][] = $item->to_array(); 
				}
			}
		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying menus and items.');
		}

		if(!empty($comment_list)){

			foreach ($comment_list as $comment) {
				$comments[] = $comment->to_array();
			}
		}
		
		$info = array('comments' => $comments, 'feature_items' => $feature_items, 'spotlight_items' => $spotlight_items, 'venue' => Session::get('venue'));
		
		parent::$data = $info;
		parent::index(); 
	}
}