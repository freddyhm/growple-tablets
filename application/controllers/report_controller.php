<?php

class Report extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){
		
		$metric_list = Metric::find("all");
		$metrics = array();
		

		$total_act_sql = "SELECT COUNT(DISTINCT(activities.id)) AS result FROM activities";
		$total_act_result = Metric::find_by_sql($total_act_sql);
		$total_act = $total_act_result[0]->result;

		$total_eng_sql = "SELECT COUNT(DISTINCT(activities.id)) AS result FROM activities 
						  WHERE activities.name = 'loved_item' OR activities.name = 'unloved_item' 
						  OR activities.name = 'unloved_comments'";
		$total_eng_result = Metric::find_by_sql($total_eng_sql);
		$total_eng = $total_eng_result[0]->result;

		$act = 

		$items_list = Item::find("all");


		foreach ($items_list as $key => $item) {
		 		
		 	$item_eng_sql = "SELECT COUNT(activities.id) AS result FROM items, activities 
		 				 WHERE activities.item_id = items.id AND items.id = $item->id 
		 				 AND (activities.name = 'loved_item'OR activities.name = 'unloved_item' OR activities.name = 'loved_comments')";


		 	$item_act_sql = "SELECT COUNT(activities.id) AS result FROM items, activities 
		 				 WHERE activities.item_id = items.id AND items.id = $item->id";

		 	$item_eng_result = Metric::find_by_sql($item_eng_sql);
			$item_eng = $item_eng_result[0]->result;
			$item_act_result = Metric::find_by_sql($item_act_sql);
			$item_act = $item_act_result[0]->result;
			$item_conv = $item_act != 0 ? ($item_eng / $item_act * 100) : 0;	
		 
		 	$metrics['act and eng'][$key]['name'] = $item->name; 
		 	$metrics['act and eng'][$key]['eng'] = $item_eng; 
		 	$metrics['act and eng'][$key]['act'] = $item_act; 
		 	$metrics['act and eng'][$key]['conv'] = $item_conv; 
		} 


		foreach ($metric_list as $metric) {

			if($metric->name == 'exposure'){


				$top_mod_act_sql = "SELECT modules.name as name, COUNT(activities.id) AS total, 
										COUNT(activities.id) / " . $total_act . " * 100 AS conv FROM items, 
										modules, activities WHERE activities.item_id = items.id AND items.module_id = modules.id 
							 	 		GROUP BY modules.name ORDER BY conv DESC";
				$top_act_sql = "SELECT items.name AS name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_act . 
								" * 100 AS conv FROM activities, items WHERE activities.item_id = items.id 
								GROUP BY items.id ORDER BY conv DESC";

			 	$result_top_mod = Metric::find_by_sql($top_mod_act_sql);
			 	$result_top_act = Metric::find_by_sql($top_act_sql);
			 	
			 	foreach ($result_top_mod as $result) {
			 		$top_mod_act[] = $result->to_array();
			 	}

			 	foreach ($result_top_act as $result) {
			 		$top_act[] = $result->to_array();
			 	}
			}else if($metric->name == 'engagement'){


				$top_mod_eng_sql = "SELECT modules.name as name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_act . " * 100 AS conv 
							 		FROM activities, items, modules WHERE activities.item_id = items.id AND items.module_id = modules.id 
							 		AND (activities.name = 'loved_item' OR activities.name = 'unloved_item' OR activities.name = 'unloved_comments') 
							 		GROUP BY modules.name
							 		ORDER BY conv DESC";

				$top_eng_sql = "SELECT items.name as name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_act . " * 100 AS conv 
						 		FROM activities, items WHERE activities.item_id = items.id AND (activities.name = 'loved_item' OR 
						 	    activities.name = 'unloved_item' OR activities.name = 'unloved_comments') 
						 		GROUP BY items.name ORDER BY conv DESC";
				
				$top_loved_sql = "SELECT items.name as name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_eng . " * 100 AS conv 
						  	  FROM activities, items, modules WHERE activities.item_id = items.id AND items.module_id = modules.id 
						  	  AND activities.name = 'loved_item' 
						  	  GROUP BY items.name 
						  	  ORDER BY conv DESC";

				$top_unloved_sql = "SELECT items.name as name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_eng . " * 100 AS conv 
						  	   FROM activities, items, modules WHERE activities.item_id = items.id AND items.module_id = modules.id 
						  	   AND activities.name = 'unloved_item' 
						  	   GROUP BY items.name
						  	   ORDER BY conv DESC";


				$top_unloved_comments_sql = "SELECT items.name AS item, comments.name AS comment, COUNT(comment_items.id) AS total 
									     FROM comment_items, items, comments WHERE comment_items.item_id = items.id 
									     AND comment_items.comment_id = comments.id 
									     GROUP BY items.name 
									     ORDER BY total DESC";

			 	$result_top_mod = Metric::find_by_sql($top_mod_eng_sql);
			 	$result_top_loved = Metric::find_by_sql($top_loved_sql);
			 	$result_top_unloved = Metric::find_by_sql($top_unloved_sql);
			 	$result_top_unloved_comments = Metric::find_by_sql($top_unloved_comments_sql);
			 	
			 	foreach ($result_top_mod as $result) {
			 		$top_mod_eng[] = $result->to_array();
			 	}

			 	foreach ($result_top_eng as $result) {
			 		$top_eng[] = $result->to_array();
			 	}

			 	foreach ($result_top_loved as $result) {
			 		$top_loved[] = $result->to_array();
			 	}

			 	foreach ($result_top_unloved as $result) {
			 		$top_unloved[] = $result->to_array();
			 	}

			 	foreach ($result_top_unloved_comments as $result) {
			 		$top_unloved_comments[] = $result->to_array();
			 	}
			}
		}


		$metrics['top activity'] = $top_act;
		$metrics['total activity'] = $total_act;
		
		$metrics['total engaged'] = $total_eng;
		$metrics['top loved'] = $top_loved;
		$metrics['top unloved'] = $top_unloved;
		$metrics['top unloved comments'] = $top_unloved_comments;

/*

		$total_discovery_sql = "SELECT COUNT(activities.id) AS result FROM activities, items WHERE activities.item_id = items.id AND items.module_id != 2";
		$total_discovery_result = Metric::find_by_sql($total_discovery_sql);
		$total_discovery = $total_discovery_result[0]->result;

		$total_play = $total_act - $total_discovery;

		print_r($total_discovery);
		print_r($total_play);
		*/
		/*

		foreach ($metric_list as $metric) {

			$mods = array();
			$sub_mods = array();
			$items = array();
			$custom = array();

			$mods_sql = "";
			$sub_mods_sql = "";
			$items_sql = "";
			$custom_sql = "";


			/*

			if($metric->name == 'exposure'){

				$sub_mods_sql = "SELECT modules.parent_id as id, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_act . " * 100 AS conv 
							 	 FROM items, modules, activities WHERE activities.item_id = items.id AND items.module_id = modules.id 
							 	 AND (modules.parent_id = 3 OR modules.parent_id = 4) 
							 	 GROUP BY modules.parent_id ASC";

				$items_sql = "SELECT items.name AS name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_act . " * 100 AS conv 
							  FROM activities, items  WHERE activities.item_id = items.id GROUP BY items.name ASC";

			}else if($metric->name == 'engagement'){

				$mods_sql = "SELECT modules.name as name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_act . " * 100 AS conv 
							 FROM steps, activities, modules WHERE activities.step_id = steps.id AND steps.module_id = modules.id 
							 AND (activities.name = 'loved_item' OR activities.name = 'unloved_item' OR activities.name = 'unloved_comments') 
							 GROUP BY modules.name ASC";
	
				$sub_mods_sql = "SELECT modules.parent_id as id, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_act . " * 100 AS conv 
								 FROM activities, items, modules WHERE activities.item_id = items.id AND items.module_id = modules.id 
								 AND (modules.parent_id = 3 OR modules.parent_id = 4) 
								 AND (activities.name = 'loved_item' OR activities.name = 'unloved_item' OR activities.name = 'unloved_comments') 
								 GROUP BY modules.parent_id ASC";
	
				$items_sql = "SELECT items.name as name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_eng . " * 100 AS conv 
							  FROM activities, items, modules WHERE activities.item_id = items.id AND items.module_id = modules.id 
							  AND (activities.name = 'loved_item' OR activities.name = 'unloved_item' OR activities.name = 'unloved_comments') 
							  GROUP BY items.name ASC";

			}else if($metric->name != 'unlove_comments'){

				if($metric->name == 'unlove'){

					$mods_sql = "SELECT modules.name as name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_eng . " * 100 AS conv 
							     FROM steps, activities, modules WHERE steps.module_id = modules.id AND activities.step_id = steps.id
							     AND activities.name = 'unloved_item' GROUP BY modules.name ASC";
	
					$sub_mods_sql = "SELECT modules.parent_id AS name, COUNT(activities.id) AS total, COUNT(activities.id) / ". $total_eng . " * 100 as 			 conv FROM activities, items, modules WHERE activities.item_id = items.id AND activities.name = 'unloved_item'
									 AND items.module_id = modules.id
									 AND (modules.parent_id = 3 OR modules.parent_id = 4) 
									 GROUP BY modules.parent_id ASC";
		
					$items_sql = "SELECT items.name as name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_eng . " * 100 AS conv 
							  	  FROM activities, items, modules WHERE activities.item_id = items.id AND items.module_id = modules.id 
							  	  AND activities.name = 'unloved_item' 
							  	  GROUP BY items.name ASC";

				}else if($metric->name == 'love'){

					$mods_sql = "SELECT modules.name as name, COUNT(activities.id) AS count, COUNT(activities.id) / " . $total_eng . " * 100 AS conv 
							     FROM steps, activities, modules WHERE steps.module_id = modules.id AND activities.step_id = steps.id
							     AND activities.name = 'loved_item' GROUP BY modules.name ASC";
	
					$sub_mods_sql = "SELECT modules.parent_id AS name, COUNT(activities.id) AS total, COUNT(activities.id) / ". $total_eng . " * 100 as 			 conv FROM activities, items, modules WHERE activities.item_id = items.id AND activities.name = 'loved_item'
									 AND items.module_id = modules.id
									 AND (modules.parent_id = 3 OR modules.parent_id = 4) 
									 GROUP BY modules.parent_id ASC";
		
					$items_sql = "SELECT items.name as name, COUNT(activities.id) AS total, COUNT(activities.id) / " . $total_eng . " * 100 AS conv 
							  	  FROM activities, items, modules WHERE activities.item_id = items.id AND items.module_id = modules.id 
							  	  AND activities.name = 'loved_item' 
							  	  GROUP BY items.name ASC";
				}

			}else if($metric->name == 'unlove_comments'){

				$custom_sql = "SELECT items.name AS item_name, comments.name AS comment_name, COUNT(comment_items.id) AS total 
							   FROM comment_items, items, comments WHERE comment_items.item_id = items.id 
							   AND comment_items.comment_id = comments.id 
							   GROUP BY items.name 
							   ORDER BY total DESC";
			}	


			if($mods_sql != ""){
				$mod_result = Metric::find_by_sql($mods_sql);
				foreach ($mod_result as $result) {
					$metrics[$metric->name]['mods'][] = $result->to_array();
				}
			}

			if($sub_mods_sql != ""){
				$sub_mod_result = Metric::find_by_sql($sub_mods_sql);
				foreach ($sub_mod_result as $result) {
					$metrics[$metric->name]['sub_mods'][] = $result->to_array();
				}
			}

			*/


		//}
		parent::$data = array('metrics' => $metrics);
		parent::index();
	}
}