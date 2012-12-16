<?php

class Report extends ActiveRecord\Model
{	
	static $belongs_to = array(array('report_type'));
	static $has_many = array(array('snapshots'));
}
