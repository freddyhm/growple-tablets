<?php

class Discover extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){

		$hot_list = Item::find_all_by_module_id('5');
		$info_list = Item::find_all_by_module_id('7');
		$comment_list = Comment::find("all");

		$hot_items = array();
		$info_items = array();
		$comments = array();

		if(!empty($hot_list)){
			// go through list of all items & submodules for menu module - FHM
			foreach ($hot_list as $item) {
				$hot_items['hot']['items'][] = $item->to_array(); 
			}
		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying menus and items.');
		}

		if(!empty($info_list)){
			// go through list of all items & submodules for menu module - FHM
			foreach ($info_list as $item) {
				$info_items['info']['items'][] = $item->to_array(); 
			}
		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying menus and items.');
		}

		if(!empty($comment_list)){

			foreach ($comment_list as $comment) {
				$comments[] = $comment->to_array();
			}
		}
		
		$info = array('comments' => $comments, 'hot_items' => $hot_items, 'info_items' => $info_items, 'venue' => Session::get('venue'));
		
		parent::$data = $info;
		parent::index(); 
	}
}