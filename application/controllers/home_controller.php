<?php

class Home extends Controller {

	public function __construct(){
		parent::__construct();
	}

	public function index(){
		parent::index();
	}

	public function reset(){

		Session::destroy();
		//parent::resetUser(); // Need to remove echo - FHM
	}
}