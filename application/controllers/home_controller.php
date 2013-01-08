<?php

class Home extends Controller {

	public function __construct(){
		parent::__construct();
	}

	public function index(){
		parent::index();
	}

	public function reset(){
		parent::resetUser(); // Need to remove echo - FHM
	}
}