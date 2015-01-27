<?php

class Venue extends ActiveRecord\Model
{
	static $connection = 'admin';
	static $has_many = array(array('users'));
}
