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

	public function stepOut(){
		$this->logUserStep('out', 3);
	}
}