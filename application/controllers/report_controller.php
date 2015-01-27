<?php

class Report extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){
		
		// convert to mysql format 
		$start_date = isset($_GET['start']) && $_GET['start'] != "" ? date('Y-m-d H:i:s', strtotime(str_replace('-', '/', $_GET['start']))) : "";
		$end_date = isset($_GET['end']) && $_GET['end'] != "" ? date('Y-m-d H:i:s', strtotime(str_replace('-', '/', $_GET['end']))) : "";
		$sql_start = $start_date != "" ? " AND start >= '" . $start_date . "' " : " ";
		$sql_end = $end_date != "" ? " AND end <= '" . $end_date . "' " : " ";
		$sql_date = $sql_start . $sql_end;

		$item_list = Item::find("all");
		$biz_items = array();
		$biz_items["views"] = array();

		// BIZ RESULTS

		/* VIEWS */

		$view_sql = "SELECT COUNT(activities.id) as total FROM activities WHERE activities.name = 'viewed_item'" . $sql_date;

		//print_r($view_sql);
		$views = Item::find_by_sql($view_sql);
		$view_result = $views[0]->total;
		$biz_items["views"] = $view_result;
		
		/* POP */

		$pop_list = array();
		$biz_items["pop"] = array();

		$pop_sql = "SELECT items.name as name, items.id as id, COUNT(activities.id) as view_total FROM activities, items WHERE activities.name =  'viewed_item' 
					AND activities.item_id = items.id" . $sql_date . "GROUP BY items.name ORDER BY view_total DESC";

		$pop_list = Item::find_by_sql($pop_sql);

		
		if(!empty($pop_list)){
			foreach ($pop_list as $key => $item) {

				$heart_total = 0;
				$new_total = 0;

				$loved_sql = "SELECT COUNT(activities.id) as heart_total FROM activities WHERE activities.name = 'loved_item' AND activities.item_id = $item->id";

				$loved_result = Item::find_by_sql($loved_sql);

				if(!empty($loved_result)){
					$heart_total = $loved_result[0]->heart_total * 2;
					$new_total = $heart_total + $item->view_total;
				}

				
				$updated_item = Utility::obj_to_array($item, array('heart_total' => $heart_total, 'new_total' => $new_total));
				$biz_items["pop"][$key] = $updated_item; 

			}
		}
	
		/* LOVED  */

		if(!empty($loved_list)){
			foreach ($loved_list as $key => $item) {
				$biz_items["loved"][$key] = $item->to_array();
			}
		}else{
			$biz_items["loved"][0]['name'] = '';
			$biz_items["loved"][0]['total'] = 0;
		}

		/* UNLOVED COMMENTS - COMMENTS ABOVE 5 */

		$unloved_list  = array();
		$biz_items["unloved"] = array();


		foreach ($item_list as $parent_key => $parent_item) {

			$unloved_sql = "SELECT items.name AS item_name, comments.name AS comment_name, COUNT(comments.name) AS total 
							FROM comment_sources, items, comments WHERE comment_sources.item_id = items.id  AND comment_sources.comment_id = comments.id 
							AND items.id = $parent_item->id" . $sql_date . "GROUP BY comments.name HAVING COUNT(comments.name) >= 5 ORDER BY total DESC";

			$unloved_list = Item::find_by_sql($unloved_sql);

			if(!empty($unloved_list)){
				foreach ($unloved_list as $child_key => $child_item) {

					if(!empty($child_item)){
						$biz_items["unloved"][$parent_item->name][$child_key] = $child_item->to_array();	
					}else{
						$biz_items["unloved"][$parent_item->name][$child_key] = "";
					}
				}
			}	
			
		}

		// APP RESULTS

		$biz_items["engagement"] = 0;
		$biz_items["conversion"] = 0;

		/* OVERALL VIEWS/ENGAGEMENT */
		$total_viewed_items = $view_result;

		$total_eng_sql = "SELECT COUNT(activities.id) AS result FROM activities 
						  WHERE activities.name = 'loved_item' OR activities.name = 'unloved_commented_item'" . $sql_date;
		$total_eng = Metric::find_by_sql($total_eng_sql);
		$total_eng_result = $total_eng[0]->result;

		if($total_viewed_items != 0){
			$total_conversion =  $total_eng_result / $total_viewed_items * 100;
			$biz_items["engagement"] = $total_eng_result;
			$biz_items["conversion"] = $total_conversion;
		}


		$biz_items["modules"] = array();

		$module_list = Module::find("all");
		$item_list = Item::find("all");
		
		foreach ($module_list as $key => $module) {
		 		
		 	$mod_view_sql = "SELECT COUNT(activities.id) AS result FROM activities, items WHERE activities.name = 'viewed_item' 
		 					AND activities.item_id = items.id AND items.module_id = $module->id" . $sql_date;;


		 	$mod_eng_sql = "SELECT COUNT(activities.id) AS result FROM activities, items 
							WHERE (activities.name = 'loved_item' OR activities.name = 'unloved_commented_item') AND activities.item_id = items.id AND items.module_id = $module->id" . $sql_date;

		 	$mod_view = Metric::find_by_sql($mod_view_sql);
			$mod_view_result = $mod_view[0]->result;

			$mod_eng = Metric::find_by_sql($mod_eng_sql);
			$mod_eng_result = $mod_eng[0]->result;

			if($mod_view_result != 0){

				$mod_conversion = $mod_eng_result / $mod_view_result * 100;

				$biz_items["modules"][$key]["name"] = $module->name;
				$biz_items["modules"][$key]["views"] = $mod_view_result;
				$biz_items["modules"][$key]["engagement"] = $mod_eng_result;
				$biz_items["modules"][$key]["conversion"] = $mod_conversion;
			}
		} 

		$biz_items["items"] = array();

		foreach ($item_list as $key => $item) {

			$item_view_sql = "SELECT COUNT(activities.id) AS result FROM activities WHERE activities.name = 'viewed_item' 
		 					AND activities.item_id = $item->id" . $sql_date;


		 	$item_eng_sql = "SELECT COUNT(activities.id) AS result FROM activities
							WHERE (activities.name = 'loved_item' OR activities.name = 'unloved_commented_item') AND activities.item_id = $item->id" . $sql_date;
			
			$item_view = Metric::find_by_sql($item_view_sql);
			$item_view_result = $item_view[0]->result;

			$item_eng = Metric::find_by_sql($item_eng_sql);
			$item_eng_result = $item_eng[0]->result;

			if($item_view_result != 0){

				$item_conversion = $item_eng_result / $item_view_result * 100;

				$biz_items["items"][$key]["name"] = $item->name;
				$biz_items["items"][$key]["views"] = $item_view_result;
				$biz_items["items"][$key]["engagement"] = $item_eng_result;
				$biz_items["items"][$key]["conversion"] = $item_conversion;
			}
		}

		$qna_comments_sql = "SELECT questions.id AS id, questions.name AS name FROM comment_sources, comments, comment_types, questions 
							  WHERE comment_sources.comment_id = comments.id 
							  AND comments.commenttype_id = comment_types.id 
							  AND comments.question_id = questions.id
							  AND comment_types.name =  'qna'" . $sql_date . "GROUP BY questions.id";

		$qna_comments_list = CommentSource::find_by_sql($qna_comments_sql);
		$qna_questions = array();
		$biz_items["questions"] = array();

		foreach ($qna_comments_list as $parent_key => $qna_comment) {
			
			$biz_items["questions"][$parent_key]['name'] = $qna_comment->name;

			$qna_comment_sql = "SELECT comments.name AS name, COUNT(comments.name) AS total FROM comment_sources, comments, questions 
								WHERE comment_sources.comment_id = comments.id 
								AND comments.question_id = questions.id
								AND questions.id = $qna_comment->id" . $sql_date . "GROUP BY comments.name ORDER BY total DESC";

			$qna_questions = Question::find_by_sql($qna_comment_sql);	

			if(!empty($qna_questions))
			{	
				foreach ($qna_questions as $child_key => $question) {
					$biz_items["questions"][$parent_key]['answers'][] = $question->to_array();
				}
			}
		}

		parent::$data = array('metrics' => $biz_items);
		parent::index();
	}
}