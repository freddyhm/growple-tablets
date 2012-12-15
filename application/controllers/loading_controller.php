<?php

class Loading extends Controller {

	// create view object
	public function __construct() 
	{
		parent::__construct();
	}

	// throws error for proper logging and error notification - FHM
	public function index(){
		
		//Session::set('user_id', 2);
		//$this->createUserPath();
		$this->logUserStep('out', 2);

		$path = unserialize(Session::get('path'));
		print_r($path);

	

	//	Session::destroy();

		

		parent::index();
	}
}