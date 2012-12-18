<?php

class Loading extends Controller {

	// create view object
	public function __construct() 
	{
		parent::__construct();
	}

	// throws error for proper logging and error notification - FHM
	public function index(){
/*
		$user_id = Session::get('user_id');

		// check we already have a user id in session - FHM
		if(!isset($user_id)){

			// create & set new user in session - FHM 
			$user = new User();
			$user->name = '';
			$user->venue_id = 1;
			$user->usertype_id = 2;
			$user->save();

			Session::set('user_id', $user->id);
		}

		// create new path - FHM
		$this->createUserPath();
	//	$this->logUserStep('in', 3);
	//	$this->logUserStep('out', 3);


	//	$path = unserialize(Session::get('path'));
	//	print_r($path);
	
	//	$this->logUserStep('out', 1);
		//$this->logUserActivity('out', 'watched a video', 1);

	//	$path = unserialize(Session::get('path'));
	
		//$this->saveUserPath();

		//print_r($path);

	

	//	Session::destroy();

		
*/
		parent::index();
	}
}