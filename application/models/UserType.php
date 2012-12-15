<?php

class UserType extends ActiveRecord\Model
{
	static $has_many = array(array('users'));
}
