<?php

class Snapshot extends ActiveRecord\Model
{
	static $belongs_to = array(array('report'), array('section_module'));
}
