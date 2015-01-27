<?php

class CommentType extends ActiveRecord\Model
{
	static $has_many = array(array('comments'));
}
