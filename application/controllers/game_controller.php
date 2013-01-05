<?php

class Game extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){
		
		// log step - FHM
		$this->logUserStep('in', 3);
		
		parent::index();
	}
}