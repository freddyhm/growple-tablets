<?php

class Analytics{

	public function __construct(){
		parent::__construct();
	}

	private function generateReport($type){

		$date = date('m/d/Y h:i:s a', time());
		$sectionmodule_list = SectionModule::find('all');
		$type_id = $type == 'internal' ? 1 : 2;

		// create a new report - FHM
		$report = new Report();
		$report->date = $date;
		$report->reporttype_id = $type_id; // internal report
		$report->save();

		if($type == 'internal'){

			foreach ($sectionmodule_list as $section_module) {

				$dur_sql = "";
				$eng_sql = "";
				$mod_id = $section_module->module_id;

				// list of all queries for our metrics - FHM

				/* "overall" section queries */
				$app_dur_query = "SELECT AVG(TIMEDIFF(end, start)) / 100 AS result FROM events WHERE eventcategory_id = 1";

				$mod_dur_query = "SELECT AVG(TIMEDIFF(end, start)) / 100 AS result FROM steps";
				$mod_eng_query = "SELECT (SELECT COUNT(DISTINCT users.id) FROM users, steps, events WHERE events.user_id = users.id AND 
								   events.id = steps.event_id AND steps.module_id != 1 AND users.usertype_id = 2) / COUNT(users.id) AS result 
								  FROM users WHERE users.usertype_id = 2";

				$act_dur_query = "SELECT AVG(TIMEDIFF(end, start)) / 100 FROM activities";
				$act_eng_query = "SELECT (SELECT COUNT(DISTINCT users.id) FROM users, steps, events, activities WHERE events.user_id = users.id AND 
								  events.id = steps.event_id AND steps.id = activities.step_id AND steps.module_id != 1 AND users.usertype_id = 2) / (SELECT COUNT(DISTINCT users.id) FROM users, steps, events WHERE events.user_id = users.id AND 
								  events.id = steps.event_id AND steps.module_id != 1 AND users.usertype_id = 2) AS result FROM users WHERE users.usertype_id = 2";
				
				/* module and activity section queries */
				$mod_gen_dur_query = "SELECT AVG(TIMEDIFF(end, start)) / 100 AS result FROM steps WHERE module_id = $mod_id";
				$mod_gen_eng_query = "SELECT (SELECT COUNT(DISTINCT users.id) FROM users, steps, events WHERE events.user_id = users.id AND 
								  	  events.id = steps.event_id AND steps.module_id = $mod_id AND users.usertype_id = 2) / COUNT(users.id) AS result FROM users 
								  	  WHERE users.usertype_id = 2";

				$act_gen_dur_query = "SELECT AVG(TIMEDIFF(activities.end, activities.start)) / 100 AS result FROM activities, steps 
									  WHERE steps.id = activities.step_id AND steps.module_id = $mod_id";
				$act_gen_eng_query = "SELECT (SELECT COUNT(DISTINCT users.id) FROM users, steps, events, activities WHERE events.user_id = users.id AND 
									  events.id = steps.event_id AND steps.id = activities.step_id AND steps.module_id = $mod_id AND users.usertype_id = 2) / 
									  (SELECT COUNT(DISTINCT users.id) FROM users, steps, events WHERE events.user_id = users.id AND 
									  events.id = steps.event_id AND steps.module_id = $mod_id AND users.usertype_id = 2) AS result FROM users WHERE users.usertype_id = 2";
				
				// handles "overall" sections and inserts proper query - FHM
				if($section_module->module_id == ''){
					switch ($section_module->section->name) {
						case 'app':
							$dur_sql = $app_dur_query;
							$eng_sql = '';
							break;
						case 'overview':
							$dur_sql = $mod_dur_query;
							$eng_sql = $mod_eng_query;
							break;
						case 'activity':
							$dur_sql = $act_dur_query;
							$eng_sql = $act_eng_query;
							break;
					}
				}else{
					switch ($section_module->section->name) {
						case 'overview':
							$dur_sql = $mod_gen_dur_query;
							$eng_sql = $mod_gen_eng_query;
							break;
						case 'activity':
							$dur_sql = $act_gen_dur_query;
							$eng_sql = $act_gen_eng_query;
							break;
					}
				}

				//execute query
				$dur = Snapshot::find_by_sql($dur_sql);
				$eng = Snapshot::find_by_sql($eng_sql);

				$snapshot = new Snapshot();
				$snapshot->duration = $dur_sql['result'];
				$snapshot->engagement = $eng_sql['result'];
				$snapshot->sectionmodule_id = $section_module->id;
				$snapshot->report_id = $report->id; 
				$snapshot->save();
			}
		}else if($type == 'venue'){

			foreach ($sectionmodule_list as $section_module) {

				$pop_sql = "";
				$mod_id = $section_module->module_id;
				
				// list of all queries for our metrics - FHM

				/* queries derived from engagement and sale  */

				$eng_pop_query = "SELECT activities.item_id, COUNT(activities.id) AS result FROM activities, items, modules 
								  WHERE activities.item_id = items.id AND items.module_id = modules.id AND modules.id = $mod_id  
								  GROUP BY item_id ASC";

				$sale_pop_query = "SELECT cart_items.item_id, COUNT(cart_items.item_id) AS result FROM cart_items, items, modules 
								   WHERE cart_items.item_id = items.id AND items.module_id = modules.id AND modules.id = 8  
								   GROUP BY cart_items.item_id ASC";

				
				// handles module name and inserts proper query - FHM
				switch ($section_module->section->name) {
					case 'menu':
						$pop_sql = $sale_pop_query;
						break;
					case 'video':
						$pop_sql = $eng_pop_query;
						break;
					case 'game':
						$pop_sql = $eng_pop_query;
						break;
				}

				// create snapshot - FHM
				$snapshot = new Snapshot();
				$snapshot->popularity = $pop_sql['result'];
				$snapshot->sectionmodule_id = $section_module->id;
				$snapshot->report_id = $report->id; 
				$snapshot->save();
			}
		}
	}
}