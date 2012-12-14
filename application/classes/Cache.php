<?php
 
class Cache {
	
	private static function cache_file()
	{
		return CACHE_PATH . md5($_SERVER['REQUEST_URI']);
	}

	// display cached file if present and not expired
	private static function cache_display()
	{
		$file = Cache::cache_file();

		// check that cache file exists and is not too old
		if(!file_exists($file)) return;
		if(filemtime($file) < time() - CACHE_TIME * 3600) return;

		// if so, display cache file and stop processing
		readfile($file);
		exit;
	}

	// write to cache file
	private static function cache_page($content)
	{
		if(false !== ($f = @fopen(Cache::cache_file(), 'w'))) {
		  fwrite($f, $content);
		  fclose($f);
		}

		return $content;
	}

	public static function start_cache(){

		// execution stops here if valid cache file found
		Cache::cache_display();

		echo 'f';

		// enable output buffering and create cache file
		ob_start();
		echo ob_get_contents();
	}	
}