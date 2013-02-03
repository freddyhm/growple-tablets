<?php

    require_once 'vendors/php-activerecord/ActiveRecord.php';

    ActiveRecord\Config::initialize(function($cfg)
    {
        $cfg->set_model_directory(MODEL_DIR);
        $cfg->set_connections(array(
            'admin' => DB_TYPE . '://' . DB_USER . ':' . DB_PASS . '@' . DB_HOST . '/' . DB_NAME. ';charset=utf8')
        );
        $cfg->set_default_connection("admin");
    });