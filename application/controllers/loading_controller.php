<?php

class Loading extends Controller {

	// create view object
	public function __construct() 
	{
		parent::__construct();
	}

	// throws error for proper logging and error notification - FHM
	public function index(){
		
	//	Session::set('user_id', 2);
	//	$this->createUserPath();
	//	$this->logUserStep('out', 1);
		//$this->logUserActivity('out', 'watched a video', 1);

	//	$path = unserialize(Session::get('path'));
	
		$this->saveUserPath();

		//print_r($path);

	

	//	Session::destroy();

		

		parent::index();
	}
}