<?php

    require_once 'vendors/php-activerecord/ActiveRecord.php';

    ActiveRecord\Config::initialize(function($cfg)
    {
        $cfg->set_model_directory(MODEL_DIR);
        $cfg->set_connections(array(
        	'owl' => 'mysql://root:root@localhost/meet_owl;charset=utf8',
            ENVIRONMENT => DB_TYPE . '://' . DB_USER . ':' . DB_PASS . '@' . DB_HOST . '/' . DB_NAME. ';charset=utf8'
        	)
        );
    });