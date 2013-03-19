<?php

    require_once 'vendors/php-activerecord/ActiveRecord.php';

    ActiveRecord\Config::initialize(function($cfg)
    {
        $cfg->set_model_directory('application/models/');
        $cfg->set_connections(array('owl' => 'mysql://meekoca_admin:9.-xp2$jwPvV<rD[jaBWR9Ms6_c`KW@localhost/meekoca_meet_owl;charset=utf8'));
        $cfg->set_default_connection("owl");
    });