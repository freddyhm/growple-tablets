<?php

class CommentSource extends ActiveRecord\Model
{
	static $belongs_to = array(array('items'), array('comments'), array('questions'));
}
