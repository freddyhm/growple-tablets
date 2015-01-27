<?php

class Comment extends ActiveRecord\Model
{
	static $has_many = array(array('comment_sources'));
	static $belongs_to = array(array('comment_type'));
}
