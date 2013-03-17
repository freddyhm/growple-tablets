<?php

class Analytics {

	public function generateReport(){

		$date = date('m/d/Y h:i:s a', time());
		$module_list = Module::find('all');
		$metric_list = Metric::find('all');

		// create a new report 
		$report = new Report();
		$report->date = $date;
		$report->save();

	//	$views_total = "SELECT COUNT(DISTINCT(activities.id)) + COUNT(DISTINCT(steps.id)) AS result FROM activities, steps";
	//		$events_total = "SELECT COUNT(id) AS result from events";

		foreach ($metric_list as $metric) {

			$mods_sql = "";
			$items_sql = "";
			$mods_list = "";
			$items_list = "";

			foreach ($module_list as $module) {

				$snapshot = new Snapshot();
				
				if($module->id < 3){
					$mods_sql = "SELECT module_id as id, COUNT(id) AS count FROM steps
							 WHERE module_id = $module->id GROUP BY module_id ASC";

					$mods = Snapshot::find_by_sql($mods_sql);

					for ($i=0; $i < count($mods); $i++) { 
						$mods_list .= $mods[$i]->id . '/' . $mods[$i]->count;
						if(($i + 1) != count($mods)){
							$mods_list .= '/';
						}
					}

					$snapshot->mods = $mods_list;

				}else{

					$items_sql = "SELECT activities.item_id AS id, COUNT(activities.id) AS count FROM activities, items, modules WHERE 
								  activities.item_id = items.id AND items.module_id = modules.id AND modules.parent_id = $mod_id 
								  AND activities.name != 'first' GROUP BY item_id ASC";

					$items = Snapshot::find_by_sql($items_sql);

					for ($i=0; $i < count($items); $i++) { 
						$items_list .= $items[$i]->id . '/' . $items[$i]->count;
						if(($i + 1) != count($items)){
							$items_list .= '/';
						}
					}

					$snapshot->items = $items_list; 
				}

				$snapshot->metric_id = $metric->id;
				$snapshot->save();
			}
		}
	}
}