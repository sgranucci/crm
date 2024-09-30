<?php

namespace App\Http\Controllers;

use Session;
use Illuminate\Http\Request;
use DB;
use CRUDBooster;
use Illuminate\Support\Facades\Auth;

use App\Lead;
use App\Agenda;

use Carbon\Carbon;

class CalendarioController extends Controller
{
    public function index()
    {
        $u = DB::table('cms_users')
            ->select('id', 'name')
  	    ->where('status', 'Activo')
		->where('name', '<>', 'Super Admin')
		->where('name', '<>', 'Admin API')
	    ->orderBy('name', 'asc')
            ->get()->toArray();
        $dest_user_id = array();
        $dest_user_id[0] = "Todos los usuarios";
        foreach ($u as $key => $value) {
            $dest_user_id[$value->id] = $value->name;
        }
	$usuario = CRUDBooster::myId();
	if ($usuario != '' && $usuario != '0')
        	$agenda = DB::table('agendas')
                     ->select('leads.name as nombre', 'leads.id as id','leads.proxima_accion as proxima_accion', 
                            'agendas.detalle', 'agendas.fecha', 'agendas.hora', 'lead_statuses.name as status',
                            'cms_users.name as usuario')
                     ->join('leads', 'leads.id', 'agendas.lead_id')
                     ->join('lead_statuses', 'lead_statuses.id', 'leads.status_id')
                     //->join('cms_users', 'cms_users.id', 'agendas.user_id')
                     ->join('cms_users', 'cms_users.id', 'agendas.dest_user_id')
                     ->where('agendas.status', 'Pendiente')
                     ->where('agendas.dest_user_id', '=', $usuario)
                     //->where('agendas.user_id', '=', $usuario)
                     ->get();
	else
        	$agenda = DB::table('agendas')
                     ->select('leads.name as nombre', 'leads.id as id','leads.proxima_accion as proxima_accion', 
                            'agendas.detalle', 'agendas.fecha', 'agendas.hora', 'lead_statuses.name as status',
                            'cms_users.name as usuario')
                     ->join('leads', 'leads.id', 'agendas.lead_id')
                     ->join('lead_statuses', 'lead_statuses.id', 'leads.status_id')
                     //->join('cms_users', 'cms_users.id', 'agendas.user_id')
                     ->join('cms_users', 'cms_users.id', 'agendas.dest_user_id')
                     ->where('agendas.status', 'Pendiente')
                     ->get();

        return view('calendar', compact('agenda', 'dest_user_id', 'usuario'));
    }

    public function indexFiltrado(Request $request)
    {
        $u = DB::table('cms_users')
            ->select('id', 'name')
  	    	->where('status', 'Activo')
			->where('name', '<>', 'Super Admin')
			->where('name', '<>', 'Admin API')
			->orderBy('name', 'asc')
            ->get()->toArray();
        $dest_user_id = array();
        $dest_user_id[0] = "Todos los usuarios";
        foreach ($u as $key => $value) {
            $dest_user_id[$value->id] = $value->name;
        }
		$usuario = $request->get('filtro_usuario');

		if ($usuario != '' && $usuario != '0')
		{
        	$agenda = DB::table('agendas')
                      ->select('leads.name as nombre', 'leads.id as id','leads.proxima_accion as proxima_accion', 
                            'agendas.detalle', 'agendas.fecha', 'agendas.hora', 'lead_statuses.name as status',
                            'cms_users.name as usuario')
                      ->join('leads', 'leads.id', 'agendas.lead_id')
                      ->join('lead_statuses', 'lead_statuses.id', 'leads.status_id')
                      //->join('cms_users', 'cms_users.id', 'agendas.user_id')
                      ->join('cms_users', 'cms_users.id', 'agendas.dest_user_id')
                      ->where('agendas.status', 'Pendiente')
                      //->where('agendas.dest_user_id', '=', $usuario)
                      ->where('agendas.user_id', '=', $usuario)
                      ->get();
		}
		else
		{
        	$agenda = DB::table('agendas')
                      ->select('leads.name as nombre', 'leads.id as id','leads.proxima_accion as proxima_accion', 
                            'agendas.detalle', 'agendas.fecha', 'agendas.hora', 'lead_statuses.name as status',
                            'cms_users.name as usuario')
                      ->join('leads', 'leads.id', 'agendas.lead_id')
                      ->join('lead_statuses', 'lead_statuses.id', 'leads.status_id')
                      ->join('cms_users', 'cms_users.id', 'agendas.dest_user_id')
                      //->join('cms_users', 'cms_users.id', 'agendas.user_id')
                      ->where('agendas.status', 'Pendiente')
                      ->get();
		}
        return view('calendar', compact('agenda', 'dest_user_id', 'usuario'));
    }

    public function calendarioReuniones()
    {
      $agenda = DB::table('agendas')
                    ->select(
                        'leads.id as id',
                        'leads.name as nombre',
                        'leads.proxima_accion as proxima_accion',
                        'agendas.status as tipo',
                        'agendas.detalle',
                        'agendas.fecha',
                        'agendas.hora',
                        'agendas.domicilio',
                        'agendas.altura',
                        'agendas.localidad',
                        'agendas.cp',
                        'lead_statuses.name as status'
                    )
                    ->join('leads', 'leads.id', 'agendas.lead_id')
                    ->join('lead_statuses', 'lead_statuses.id', 'leads.status_id')
                    ->where('agendas.status', 'Reunion Pendiente')
                    ->orWhere('agendas.status', 'Reunion Domicilio')
                    ->orWhere('agendas.status', 'Reunion Oficina')
                    ->get();
      return view('calendarReuniones', compact('agenda'));
    }
}
