<?php

class SectionModule extends ActiveRecord\Model
{
	static $has_many = array(array('snapshots'));
	static $belongs_to = array(array('section'), array('module'));
}
