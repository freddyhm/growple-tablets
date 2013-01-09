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

	public function stepIn($mod_id){
		$this->logUserStep('in', $mod_id);	
	}

	public function stepOut($mod_id){
		$this->logUserStep('out', $mod_id);
	}	
}