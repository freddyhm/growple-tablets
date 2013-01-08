<?php

class Home extends Controller {

	public function __construct(){
		parent::__construct();
	}

	public function index(){

		$new_user = Session::get('new_user');

		if($new_user){
			Session::set('new_user', 'no');
		}else{
			Session::set('new_user', 'yes');
		}
		
		$info = array('is_virgin' => $new_user);


		parent::$data = $info;
		parent::index();
	}

	public function reset(){
		parent::resetUser(); // Need to remove echo - FHM
	}
}