<?php

class Tablet extends ActiveRecord\Model
{
	static $has_many = array(array('users'));
}
