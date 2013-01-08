<?php

class Video extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){

		// log step - FHM
		$this->logUserStep('in', 2);
	
		$video_list = Item::find_all_by_module_id(2);
		$videos = array();
		
		if(!empty($video_list)){

			foreach ($video_list as $video) {
				$videos[] = $video->to_array();
			}
			$info = array('videos' => $videos);
			parent::$data = $info;
			parent::index();
		}else{
			$this->handleError('danger', get_class().'_controller.php', 'Problem displaying videos, list returned empty.');
		}
	}
}