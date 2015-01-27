<?php

class PromoType extends ActiveRecord\Model
{
	static $has_many = array(array('promos'));
}
