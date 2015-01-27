<?php

class Question extends ActiveRecord\Model
{
	static $has_many = array(array('comments'));
}
