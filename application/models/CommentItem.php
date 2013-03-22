<?php

class CommentItem extends ActiveRecord\Model
{
	static $belongs_to = array(array('items'), array('comments'));
}
