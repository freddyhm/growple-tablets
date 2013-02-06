<?php

class Test extends ActiveRecord\Model
{
	static $has_many = array(array('activities'));
}
