<?php

class Promo extends ActiveRecord\Model
{
	static $belongs_to = array(array('promo_type'));
}
