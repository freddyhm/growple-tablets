<?php

class Play extends Controller {


	public function __construct() {
		parent::__construct();
	}

	public function index(){

		$play_list = Item::find_all_by_module_id(2);
		$items = array();
		
		if(!empty($play_list)){

			foreach ($play_list as $item) {
				$items[] = $item->to_array();
			}
			$info = array('play_items' => $items);
			parent::$data = $info;
			parent::index();
		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying videos, list returned empty.');
		}
	}
}