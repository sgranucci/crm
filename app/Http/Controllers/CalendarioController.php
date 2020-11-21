<?php

namespace App\Http\Controllers;

use Session;
use Illuminate\Http\Request;
use DB;
use CRUDBooster;

use App\Lead;
use App\Agenda;

use Carbon\Carbon;

class CalendarioController extends Controller
{
    public function index()
    {
        $agenda = DB::table('agendas')
                      ->select('leads.name as nombre', 'leads.id as id','leads.proxima_accion as proxima_accion', 'agendas.detalle', 'agendas.fecha', 'agendas.hora', 'lead_statuses.name as status')
                      ->join('leads', 'leads.id', 'agendas.lead_id')
                      ->join('lead_statuses', 'lead_statuses.id', 'leads.status_id')
                      ->where('agendas.status', 'Pendiente')
                      ->get();
        return view('calendar', compact('agenda'));
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
