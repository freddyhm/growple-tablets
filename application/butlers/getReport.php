<?php 

if($_REQUEST['url'] == 'butlers/getReport.php'){

	$error = 'Error: you forgot to specify a report type or you asked for an invalid type!';

	// get analytics or throw error if type isn't specified correctly - FHM
	if(isset($_REQUEST['type'])){
		$type = $_REQUEST['type'];
		if($type == 'internal' || $type == 'venue' ){
			$analytics = new Analytics();
			$analytics->generateReport($type);
		}else{
			echo $error;
		}
	}else{
		echo $error;
	}
}