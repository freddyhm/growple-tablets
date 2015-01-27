<?php

class Play extends Controller {


	public function __construct() {
		parent::__construct();
	}

	public function index(){

		$play_list = Item::find_all_by_module_id(2);
		$qna_comment_list = Comment::find_all_by_commenttype_id('3');
		$qna_comments = array();
		$items = array();

		if(!empty($qna_comment_list)){

			foreach ($qna_comment_list as $comment) {
				$qna_comments[] = $comment->to_array();
			}
		}
		
		if(!empty($play_list)){

			foreach ($play_list as $item) {
				$items[] = $item->to_array();
			}
			$info = array('play_items' => $items, 'qna_comments' => $qna_comments);
			parent::$data = $info;
			parent::index();
		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying videos, list returned empty.');
		}
	}
}