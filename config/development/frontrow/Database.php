<?php

    require_once 'vendors/php-activerecord/ActiveRecord.php';

    ActiveRecord\Config::initialize(function($cfg)
	{
	    $cfg->set_model_directory('application/models/');
	    $cfg->set_connections(array('mcginnis' => 'mysql://root:root@localhost/meet_frontrow;charset=utf8'));
	    $cfg->set_default_connection('mcginnis');
	});