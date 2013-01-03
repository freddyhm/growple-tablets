<?php

class Game extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){

		//$this->logUserStep('in', 3);
		
		parent::index();
	}
}