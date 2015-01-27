<?php

class Step extends ActiveRecord\Model
{
	static $has_many = array(array('activities'));
	static $belongs_to = array(array('event'), array('module'));
}
