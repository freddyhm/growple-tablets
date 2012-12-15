<?php

class CartItem extends ActiveRecord\Model
{
	static $belongs_to = array(array('carts'), array('items'));
}
