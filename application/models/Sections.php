<?php

class Sections extends ActiveRecord\Model
{
	static $has_many = array(array('section_modules'));
}
