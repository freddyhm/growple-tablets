<?php

    require_once 'vendors/php-activerecord/ActiveRecord.php';

    ActiveRecord\Config::initialize(function($cfg)
    {
        $cfg->set_model_directory('application/models/');
        $cfg->set_connections(array('owl' => 'mysql://bidloo_admin:rAMwbSmdnNbng2cViv8ocMXPvJTa87@localhost/bidloo_meet_owl;charset=utf8'));
        $cfg->set_default_connection("owl");
    });