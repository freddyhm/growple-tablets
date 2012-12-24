<?php

class Cart extends ActiveRecord\Model
{
	static $has_many = array(array('cart_items'));
	static $belongs_to = array(array('user'));
}
