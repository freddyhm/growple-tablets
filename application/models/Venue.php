<?php

class Venue extends ActiveRecord\Model
{
	static $has_many = array(array('users'));
}
