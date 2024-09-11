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
    
	// Lee las acciones de una situacion
	public function proxaccion($situacion_id) {
		$query = DB::table('situacion_accion')
				 ->select('situacion_accion.proxima_accions_id as idacc','proxima_accions.name')
				 ->join('proxima_accions','proxima_accions.id','situacion_accion.proxima_accions_id')
				 ->where('situacion_accion.situacions_id',$situacion_id)
				 ->get();
		return $query;
    }
    
}
