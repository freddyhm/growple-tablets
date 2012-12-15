<?php

class Item extends ActiveRecord\Model
{
	static $belongs_to = array(array('module'));
}
