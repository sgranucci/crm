<?php

namespace App\Http\Controllers;

use Session;
use Illuminate\Http\Request;
use DB;
use CRUDBooster;
use App\Lead;
use Carbon\Carbon;

class MainDashBoardController extends Controller
{
    public function Dashboard()
    {
        $hoy = Carbon::now()->format('Y-m-d');

        $q_leads = DB::table('leads')->select(DB::raw('count(*) as leads'))->where('status_id', 1)->get();
        $q_contaf = DB::table('leads')->select(DB::raw('count(*) as contaf'))->where('status_id', 2)->whereIn('proxima_accion', [4,10,11,12])->get();
        $q_contaa = DB::table('leads')->select(DB::raw('count(*) as contaa'))->where('status_id', 2)->where('proxima_accion', 3)->get();
        $q_prospf = DB::table('leads')->select(DB::raw('count(*) as prospf'))->where('status_id', 3)->where('proxima_accion', 12)->get();
        $q_prospa = DB::table('leads')->select(DB::raw('count(*) as prospa'))->where('status_id', 3)->where('proxima_accion', '!=', 12)->get();
        $q_histo = DB::table('leads')->select(DB::raw('count(*) as histo'))->where('status_id', 5)->get();
        $q_clien = DB::table('leads')->select(DB::raw('count(*) as clien'))->where('status_id', 6)->get();
        $q_agend = DB::table('agendas')->select(DB::raw('count(*) as agend'))
                      ->where('fecha', '<=', $hoy)
                      ->where('status', '=', 'Pendiente')
                      ->get();

        $leads = $q_leads[0]->leads;
        $contaf = $q_contaf[0]->contaf;
        $contaa = $q_contaa[0]->contaa;
        $prospf = $q_prospf[0]->prospf;
        $prospa = $q_prospa[0]->prospa;
        $histo = $q_histo[0]->histo;
        $clien = $q_clien[0]->clien;
        $agend = $q_agend[0]->agend;

        //dd($q_prospf);    
        return view('main_dashboard', compact('leads', 'contaa', 'prospa', 'contaf', 'prospf', 'histo', 'clien', 'total', 'agend'));
    }

    public function desktopBusqueda(Request $request)
    {
        $salida = " ";
        $q = $request->consulta;

        if ($q == "") {
            return "sin datos";
        } else {
            $datos= DB::table('leads')->select('leads.id as identificador','leads.name as nombre', 'leads.proxima_accion', 'leads.email', 'leads.tel_full', 'canals.name as canal', 'products.name as producto', 'situacions.name as situacion', 'leads.status_id as estado', 'lead_statuses.name as name_estado')
            ->join('canals', 'canals.id', 'leads.canal_id')
            ->join('products', 'products.id', 'leads.product_id')
            ->join('situacions', 'situacions.id', 'leads.situacion_id')
            ->join('lead_statuses', 'lead_statuses.id', 'leads.status_id')
            ->where('leads.name', 'LIKE', '%'.$q.'%')
            ->orWhere('leads.email', 'like', '%'.$q.'%')
            ->orWhere('leads.tel_full', 'like', '%'.$q.'%')
            ->orWhere('canals.name', 'like', '%'.$q.'%')
            ->orWhere('products.name', 'like', '%'.$q.'%')
            ->orWhere('situacions.name', 'like', '%'.$q.'%')
            ->get();
            $salida .= "<table class='table table-striped'>
							<thead>
								<th></th>
								<th>Nombre</th>
								<th>Estado</th>
								<th>Email</th>
								<th>Telefono</th>
								<th>Canal</th>
								<th>Producto</th>
								<th>Situaciòn</th>
							</thead>
							<tbody>
    		";

            //dd($datos);

            foreach ($datos as $key => $value) {
                //dd($value);

                if ($value->estado==6) {
                    $path = "clientes";
                }
                if ($value->estado==5) {
                    $path = "historicos";
                }
                if ($value->estado==3) {
                    if ($value->proxima_accion==10 || $value->proxima_accion==4 || $value->proxima_accion==11 || $value->proxima_accion==12) {
                        $path = "prospectFacilitador";
                    } else {
                        $path = "prospect";
                    }
                }

                if ($value->estado==2) {
                    if ($value->proxima_accion==10 || $value->proxima_accion==4 || $value->proxima_accion==11 || $value->proxima_accion==12) {
                        $path = "contactoFacilitador";
                    }
                    if ($value->proxima_accion==3 || $value->proxima_accion==15 || $value->proxima_accion==18 || $value->proxima_accion==1) {
                        $path = "contacto";
                    }
                }

                if ($value->estado==1) {
                    $path = "leads";
                }

                $salida .= "<tr>";
                if (CRUDBooster::myPrivilegeId() == 3 and $value->estado==6) {
                    $salida .= "<td><a href='#' class='btn btn-danger'>X</td>";
                } else {
                    $salida .= "<td><a href='".CRUDBooster::adminPath()."/".$path."?q=".$value->identificador."' class='btn btn-primary'>IR</td>";
                }


                $salida .= "<td>".$value->nombre."</td>";
                $salida .= "<td>".$value->name_estado."</td>";
                $salida .= "<td>".$value->email."</td>";
                $salida .= "<td>".$value->tel_full."</td>";
                $salida .= "<td>".$value->canal."</td>";
                $salida .= "<td>".$value->producto."</td>";
                $salida .= "<td>".$value->situacion."</td>";

                $salida .= "</tr>";
            }
            $salida .= "</tbody></table>";
            return $salida;
        }
    }
}
