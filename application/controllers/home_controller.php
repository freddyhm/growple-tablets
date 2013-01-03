<?php

class Home extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	// throws error for proper logging and error notification - FHM
	public function index(){
		//$this->resetUser();
		parent::index();
	}
}