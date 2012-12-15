<?php

class EventCategory extends ActiveRecord\Model
{
	static $has_many = array(array('events'));
}
