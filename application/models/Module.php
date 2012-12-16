<?php

class Module extends ActiveRecord\Model
{
	static $has_many = array(array('items'), array('steps'), array('section_modules'));
	static $belongs_to = array(array('venue'));
}
