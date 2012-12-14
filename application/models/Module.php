<?php

class Module extends ActiveRecord\Model
{
	static $has_many = array(array('items'));
	static $belongs_to = array(array('venue'));
}
