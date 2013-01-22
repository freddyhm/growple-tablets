<?php

class ReportList extends Controller {

	public function __construct() 
	{
		parent::__construct();
	}

	public function index(){
		
		$report_list = Report::find("all");
		$snapshot_list = Snapshot::find("all");
		$reports = array();

		foreach ($report_list as $rep_key => $report) {

			$snapshot_list = Snapshot::find_all_by_report_id($report->id);
			$reports[$rep_key]['name'] = $report->report_type->name;
			$reports[$rep_key]['date'] = $report->date->format('y/m/d h:m:s');
	
			foreach ($snapshot_list as $snap_key => $snapshot) {

				// section name - FHM
				$reports[$rep_key]['snapshots'][$snap_key]['section'] = isset($snapshot->section_module->section->name) ? $snapshot->section_module->section->name : "";

				// module name - FHM
				$reports[$rep_key]['snapshots'][$snap_key]['module'] = isset($snapshot->section_module->module->name) ? $snapshot->section_module->module->name : "general" ;

				// duration - FHM
				$reports[$rep_key]['snapshots'][$snap_key]['duration'] = $snapshot->duration;

				// engagmenet - FHM
				$reports[$rep_key]['snapshots'][$snap_key]['engagement'] = $snapshot->engagement;

			}
		}		

		parent::$data = array('reports' => $reports);
		parent::index();
	}
}