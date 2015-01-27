<?php

    require_once 'vendors/php-activerecord/ActiveRecord.php';

    ActiveRecord\Config::initialize(function($cfg)
    {
        $cfg->set_model_directory(MODEL_DIR);
        $cfg->set_connections(array('frontrow' => 'mysql://meekoca_admin:rAMwbSmdnNbng2cViv8ocMXPvJTa87@localhost/meekoca_meet_frontrow;charset=utf8'));
        $cfg->set_default_connection("frontrow");
    });