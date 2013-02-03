<?php

class User extends ActiveRecord\Model
{
	static $connection = 'admin';
	static $has_many = array(array('events'));
	static $belongs_to = array(array('user_type'), array('venue'));
}
