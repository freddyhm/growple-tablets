<?php

class Home extends Controller {

	public function __construct(){
		parent::__construct();
	}

	public function index(){
	
		parent::index();
	}

	public function destroy(){
		Session::destroy(); // Need to remove echo - FHM
	}

	public function reset(){		
		parent::resetUser(); // Need to remove echo - FHM
	}

	public function step($status, $mod_id){
		$this->logUserStep($status, $mod_id);	
	}

	public function activity($status, $action, $item_id){
		$this->logUserActivity($status, $action, $item_id);
	}
}