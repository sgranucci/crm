<?php

namespace App\Http\Controllers;


use Session;
use Request;
use DB;
use CRUDBooster;

class ProximaAccionController extends Controller
	{
    
    public function proxestado($id) {
		$query = DB::table('proxima_accions')
				 ->select('proxima_accions.lead_statuses_id as idst','lead_statuses.name')
				 ->join('lead_statuses','lead_statuses.id','proxima_accions.lead_statuses_id')
				 ->where('proxima_accions.id',$id)
				 ->get();

		return $query;
    }
    
}
