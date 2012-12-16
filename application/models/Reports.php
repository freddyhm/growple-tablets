<?php

class Report extends ActiveRecord\Model
{
	static $has_many = array(array('snapshots'));
}
