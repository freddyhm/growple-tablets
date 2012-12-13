<?php

// set default timezone - FHM
// date_default_timezone_set('');

// loading necessary files (order of loading is important!) - FHM
foreach (glob("config/*.php") as $filename)
{
    require $filename;
}

foreach (glob("libs/*.php") as $filename)
{
    require $filename;
}

foreach (glob("application/classes/*.php") as $filename)
{
    require $filename;
}

// The butlers are always the last to load - FHM
foreach (glob("application/butlers/*.php") as $filename)
{
    require $filename;
}

// init session variable class if session doesn't exist - FHM
// if calling scripts that start session make sure to add condition to avoid double calls - FHM
if(!Session::exist())
{
	Session::init();
}
  
$app = new Bootstrap();