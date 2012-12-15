<?php

class Event extends ActiveRecord\Model
{
	static $has_many = array(array('steps'));
	static $belongs_to = array(array('event_category'), array('user'));
}
