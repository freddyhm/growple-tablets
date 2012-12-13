<?php

/* Base class for all controllers - FHM */

class Controller {

	// used to send data to the view
	public static $data;
	// accessible to child objets, for custom rendering - FHM 
	protected static $view;

	// create view object
	public function __construct() 
	{
		self::$view = new View();
	}
        
	// render view for single view based on controller
	public function index()
	{
	  	self::$view->render(get_class($this), self::$data);
	}

	// render for single view based on controller's method ex:start/add/ (add is a view)
	// also for views that fall under a grouping, ex: start/crud/add/  (add is a view part of the crud grouping)
	public function custom($view, $subview=null){
		self::$view->render($view, self::$data, $subview);
	}
}