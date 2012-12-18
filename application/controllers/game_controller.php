<?php

class Game extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){

/*
		$this->logUserStep('in', 3);
		$path = Session::get('path');
		print_r($path);
*/
		
		parent::index();
	}
}