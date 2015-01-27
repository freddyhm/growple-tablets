<?php

class ReportType extends ActiveRecord\Model
{
	static $has_many = array(array('reports'));
}
