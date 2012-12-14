<?php

class User extends ActiveRecord\Model
{
	static $belongs_to = array(array('user_type'), array('venue'));
}
