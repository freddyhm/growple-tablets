<?php

class Section extends ActiveRecord\Model
{
	static $has_many = array(array('section_modules'));
}
