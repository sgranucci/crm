<?php

namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;
use Carbon\Carbon;
use App\ProximaAccion;
use App\Situacion;
use App\LeadStatus;

class AdminTicketsController extends \crocodicstudio\crudbooster\controllers\CBController
{
    public function cbInit()
    {

        # START CONFIGURATION DO NOT REMOVE THIS LINE
        $this->title_field = "id";
        $this->limit = "20";
        $this->orderby = "id,desc";
        $this->global_privilege = false;
        $this->button_table_action = true;
        $this->button_bulk_action = true;
        $this->button_action_style = "button_icon";
        $this->button_add = true;
        $this->button_edit = true;
        $this->button_delete = true;
        $this->button_detail = true;
        $this->button_show = false;
        $this->button_filter = true;
        $this->button_import = false;
        $this->button_export = true;
        $this->table = "tickets";
        # END CONFIGURATION DO NOT REMOVE THIS LINE

        # START COLUMNS DO NOT REMOVE THIS LINE
        $this->col = [];
        $this->col[] = ["label" => "Fecha Contacto", "name" => "created_at"];
        $this->col[] = ["label" => "Contactado por", "name" => "user_id", "join" => "cms_users,name"];
        $this->col[] = ["label" => "Canal", "name" => "canal_id", "join" => "canals,name"];
        $this->col[] = ["label" => "Producto", "name" => "product_id", "join" => "products,name"];
        $this->col[] = ["label" => "Detalle", "name" => "detalle"];
        $this->col[] = ["label" => "Situacion", "name" => "situacion_id", "join" => "situacions,name"];
        $this->col[] = ['label' => 'Lead:', 'name' => 'lead_id', 'join' => 'leads,name'];
        $this->col[] = ["label" => "Acción", "name" => "proxima_accion", "join" => "proxima_accions,name"];
        $this->col[] = ['label' => 'Estado', 'name' => 'status_id', 'join' => 'lead_statuses,name', 'parent_select' => 'proxima_accion'];
        # END COLUMNS DO NOT REMOVE THIS LINE

        # START FORM DO NOT REMOVE THIS LINE
        $this->form = [];
        $this->form[] = ['label' => 'Canal', 'name' => 'canal_id', 'type' => 'select2', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'datatable' => 'canals,name'];
        $this->form[] = ['label' => 'Producto', 'name' => 'product_id', 'type' => 'select2', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'datatable' => 'products,name'];
        $this->form[] = ['label' => 'Detalle', 'name' => 'detalle', 'type' => 'textarea', 'validation' => 'required|string|min:5|max:5000', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'Situación:', 'name' => 'situacion_id', 'type' => 'select2', 'validation' => 'required', 'width' => 'col-sm-9', 'datatable' => 'situacions,name'];
        $this->form[] = ['label' => 'Proxima Acción', 'name' => 'proxima_accion', 'type' => 'select2', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'datatable' => 'proxima_accions,name'];
        $this->form[] = ['label' => 'Estado', 'name' => 'status_id', 'type' => 'select', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'datatable' => 'lead_statuses,name', 'parent_select' => 'proxima_accion'];
        $this->form[] = ['label' => 'Telefono', 'name' => 'telefono', 'type' => 'text', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'Prefijo', 'name' => 'prefijo', 'type' => 'text', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'hora_ag', 'name' => 'hora_ag', 'type' => 'text', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'fecha_ag', 'name' => 'fecha_ag', 'type' => 'text', 'width' => 'col-sm-10', 'validation' => 'date|after_or_equal:today'];
        $this->form[] = ['label' => 'agenda', 'name' => 'agenda', 'type' => 'checkbox', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'Lead:', 'name' => 'lead_id', 'type' => 'select2', 'validation' => 'required|integer|min:0', 'width' => 'col-sm-10', 'datatable' => 'leads,name'];
        $this->form[] = ['label' => 'hora_re', 'name' => 'hora_re', 'type' => 'text', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'fecha_re', 'name' => 'fecha_re', 'type' => 'text', 'width' => 'col-sm-10', 'validation' => 'date|after_or_equal:today'];
        $this->form[] = ['label' => 'reunion', 'name' => 'reunion', 'type' => 'checkbox', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'reunionDom', 'name' => 'reunionDom', 'type' => 'checkbox', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'domicilio', 'name' => 'domicilio', 'type' => 'text', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'altura', 'name' => 'altura', 'type' => 'text', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'cp', 'name' => 'cp', 'type' => 'text', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'depto', 'name' => 'depto', 'type' => 'text', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'localidad', 'name' => 'localidad', 'type' => 'text', 'width' => 'col-sm-10'];
        # END FORM DO NOT REMOVE THIS LINE

        # OLD START FORM
        //$this->form = [];
        //$this->form[] = ['label'=>'Canal','name'=>'canal_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'canals,name','disabled' => 'true', 'value' => 1];
        //$this->form[] = ['label'=>'Producto','name'=>'product_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'products,name'];
        //$this->form[] = ['label'=>'Detalle','name'=>'detalle','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
        //$this->form[] = ['label'=>'Situación:','name'=>'situacion_id','type'=>'select2','validation'=>'required','width'=>'col-sm-9','datatable'=>'situacions,name'];
        //$this->form[] = ['label'=>'Proxima Acción','name'=>'proxima_accion','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'proxima_accions,name'];
        //
        //$this->form[] = ['label'=>'Estado','name'=>'status_id','type'=>'select','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'lead_statuses,name','parent_select'=>'proxima_accion'];
        //$this->form[] = ['label'=>'Telefono','name'=>'telefono','type'=>'text'];
        //$this->form[] = ['label'=>'Prefijo','name'=>'prefijo','type'=>'text'];
        //$this->form[] = ['label'=>'hora_ag','name'=>'hora_ag','type'=>'text'];
        //$this->form[] = ['label'=>'fecha_ag','name'=>'fecha_ag','type'=>'text'];
        //$this->form[] = ['label'=>'agenda','name'=>'agenda','type'=>'checkbox'];
        //
        //
        //
        //
        //
        //$this->form[] = ['label'=>'Lead:','name'=>'lead_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'leads,name'];
        # OLD END FORM

        /*
        | ----------------------------------------------------------------------
        | Sub Module
        | ----------------------------------------------------------------------
        | @label          = Label of action
        | @path           = Path of sub module
        | @foreign_key 	  = foreign key of sub table/module
        | @button_color   = Bootstrap Class (primary,success,warning,danger)
        | @button_icon    = Font Awesome Class
        | @parent_columns = Sparate with comma, e.g : name,created_at
        |
        */
        $this->sub_module = array();


        /*
        | ----------------------------------------------------------------------
        | Add More Action Button / Menu
        | ----------------------------------------------------------------------
        | @label       = Label of action
        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
        | @icon        = Font awesome class icon. e.g : fa fa-bars
        | @color 	   = Default is primary. (primary, warning, succecss, info)
        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
        |
        */
        $this->addaction = array();


        /*
        | ----------------------------------------------------------------------
        | Add More Button Selected
        | ----------------------------------------------------------------------
        | @label       = Label of action
        | @icon 	   = Icon from fontawesome
        | @name 	   = Name of button
        | Then about the action, you should code at actionButtonSelected method
        |
        */
        $this->button_selected = array();


        /*
        | ----------------------------------------------------------------------
        | Add alert message to this module at overheader
        | ----------------------------------------------------------------------
        | @message = Text of message
        | @type    = warning,success,danger,info
        |
        */
        $this->alert        = array();



        /*
        | ----------------------------------------------------------------------
        | Add more button to header button
        | ----------------------------------------------------------------------
        | @label = Name of button
        | @url   = URL Target
        | @icon  = Icon from Awesome.
        |
        */
        $this->index_button = array();



        /*
        | ----------------------------------------------------------------------
        | Customize Table Row Color
        | ----------------------------------------------------------------------
        | @condition = If condition. You may use field alias. E.g : [id] == 1
        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.
        |
        */
        $this->table_row_color = array();


        /*
        | ----------------------------------------------------------------------
        | You may use this bellow array to add statistic at dashboard
        | ----------------------------------------------------------------------
        | @label, @count, @icon, @color
        |
        */
        $this->index_statistic = array();



        /*
        | ----------------------------------------------------------------------
        | Add javascript at body
        | ----------------------------------------------------------------------
        | javascript code in the variable
        | $this->script_js = "function() { ... }";
        |
        */
        $this->script_js = null;


        /*
        | ----------------------------------------------------------------------
        | Include HTML Code before index table
        | ----------------------------------------------------------------------
        | html code to display it before index table
        | $this->pre_index_html = "<p>test</p>";
        |
        */
        $this->pre_index_html = null;



        /*
        | ----------------------------------------------------------------------
        | Include HTML Code after index table
        | ----------------------------------------------------------------------
        | html code to display it after index table
        | $this->post_index_html = "<p>test</p>";
        |
        */
        $this->post_index_html = null;



        /*
        | ----------------------------------------------------------------------
        | Include Javascript File
        | ----------------------------------------------------------------------
        | URL of your javascript each array
        | $this->load_js[] = asset("myfile.js");
        |
        */
        $this->load_js = array();
        $this->load_js[] = asset("js/funciones.js");




        /*
        | ----------------------------------------------------------------------
        | Add css style at body
        | ----------------------------------------------------------------------
        | css code in the variable
        | $this->style_css = ".style{....}";
        |
        */
        $this->style_css = null;



        /*
        | ----------------------------------------------------------------------
        | Include css File
        | ----------------------------------------------------------------------
        | URL of your css each array
        | $this->load_css[] = asset("myfile.css");
        |
        */
        $this->load_css = array();
    }


    /*
    | ----------------------------------------------------------------------
    | Hook for button selected
    | ----------------------------------------------------------------------
    | @id_selected = the id selected
    | @button_name = the name of button
    |
    */
    public function actionButtonSelected($id_selected, $button_name)
    {
        //Your code here
    }


    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate query of index result
    | ----------------------------------------------------------------------
    | @query = current sql query
    |
    */
    public function hook_query_index(&$query)
    {
        //Your code here
    }

    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate row of index table html
    | ----------------------------------------------------------------------
    |
    */
    public function hook_row_index($column_index, &$column_value)
    {
        //Your code here
    }

    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate data input before add data is execute
    | ----------------------------------------------------------------------
    | @arr
    |
    */
    public function hook_before_add(&$postdata)
    {
        $postdata['user_id']  = CRUDBooster::myId();
        //dd($postdata['agenda']);
    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command after add public static function called
    | ----------------------------------------------------------------------
    | @id = last insert id
    |
    */
    public function hook_after_add($id)
    {
        $query = DB::table('tickets')
            ->select(
                'status_id',
                'lead_id',
                'proxima_accion',
                'detalle',
                'prefijo',
                'telefono',
                'situacion_id',
                'agenda',
                'fecha_ag',
                'hora_ag',
                'reunion',
                'fecha_re',
                'hora_re',
                'domicilio',
                'reunionDom',
                'altura',
                'depto',
                'cp',
                'localidad'
            )
            ->where('id', $id)
            ->get();
        
        // Pone en Finalizado cuando encuentra tickets -Deja solo activo al ultimo
        //if ($query[0]->agenda == 'value' || $query[0]->reunion == 'value' || $query[0]->reunionDom == 'value') {
            if (count(DB::table('agendas')->select('id')->where('lead_id', $query[0]->lead_id)->get()) > 0) {
                DB::table('agendas')
                    ->where('lead_id', $query[0]->lead_id)
                    ->update(
                        [
                            'status'    => 'Finalizado'
                        ]
                    );
            }
        //}
        

        // Pone en Pendiente la agenda nueva.
        if ($query[0]->agenda == 'value') {
            DB::table('agendas')->insert(
                [
                    'lead_id'                 => $query[0]->lead_id,
                    'user_id'                 => CRUDBooster::myId(),
                    'fecha'                      => $query[0]->fecha_ag,
                    'hora'                      => $query[0]->hora_ag,
                    'situacions_id'        => $query[0]->situacion_id,
                    'detalle'                    => $query[0]->detalle,
                    'status'                     => "Pendiente",
                    'created_at'            => \Carbon\Carbon::now()
                ]
            );
        }

        // Reunion Oficina
        if ($query[0]->reunion == 'value') {
            DB::table('agendas')->insert(
                [
                    'lead_id'       => $query[0]->lead_id,
                    'user_id'       => CRUDBooster::myId(),
                    'fecha'         => $query[0]->fecha_re,
                    'hora'          => $query[0]->hora_re,
                    'situacions_id' => $query[0]->situacion_id,
                    'detalle'       => $query[0]->detalle,
                    'status'        => "Reunion Oficina",
                    'created_at'    => \Carbon\Carbon::now()
                ]
            );
        }

        //Reunion Domicilio
        if ($query[0]->reunionDom == 'value') {
            DB::table('agendas')->insert(
                [
                    'lead_id'       => $query[0]->lead_id,
                    'user_id'       => CRUDBooster::myId(),
                    'fecha'         => $query[0]->fecha_re,
                    'hora'          => $query[0]->hora_re,
                    'situacions_id' => $query[0]->situacion_id,
                    'detalle'       => $query[0]->detalle,
                    'status'        => "Reunion Domicilio",
                    'domicilio'     => $query[0]->domicilio,
                    'altura'        => $query[0]->altura,
                    'depto'         => $query[0]->depto,
                    'cp'            => $query[0]->cp,
                    'localidad'     => $query[0]->localidad,
                    'created_at'    => \Carbon\Carbon::now()
                ]
            );
        }

        $status_id    = $query[0]->status_id;
        $lead_id      = $query[0]->lead_id;
        $accion       = $query[0]->proxima_accion;
        $detalle      = $query[0]->detalle;
        $telefono     = $query[0]->telefono;
        $prefijo      = $query[0]->prefijo;
        $situacion_id = $query[0]->situacion_id;
        $tel_full     = $query[0]->prefijo . $query[0]->telefono;

        DB::table('leads')
            ->where('id', $lead_id)
            ->update(
                [
                    'status_id'      => $status_id,
                    'proxima_accion' => $accion,
                    'detalle'        => $detalle,
                    'tel_full'       => $tel_full,
                    'telefono'       => $telefono,
                    'prefijo'        => $prefijo,
                    'situacion_id'   => $situacion_id

                ]
            );

        if ($status_id == 1) {
            $caja = "leads";
        } elseif ($status_id == 2) {
            if ($accion == 1 || $accion == 3 || $accion == 15 || $accion == 18) {
                $caja = "contacto";
            }
            if ($accion == 4 || $accion == 10 || $accion == 11) {
                $caja = "contactoFacilitador";
            }
        } elseif ($status_id == 3) {
            if ($accion == 12) {
                $caja = "prospectFacilitador";
            } else {
                $caja = "prospect";
            }
        } elseif ($status_id == 5) {
            $caja = "historicos";
        } elseif ($status_id == 6) {
            $caja = "clientes";
        };
        // CRUDBooster::redirect(CRUDBooster::mainpath('?parent_table=leads&parent_columns=name,tel_full&parent_columns_alias=&parent_id='.$lead_id.'&return_url=http%3A%2F%2Flocalhost%3A8000%2Fadmin%2F'.$caja.'&foreign_key=lead_id&label=Tickets'), 'Ticket Actualizado', 'success');
        CRUDBooster::redirect(CRUDBooster::mainpath('?parent_table=leads&parent_columns=name,tel_full&parent_columns_alias=&parent_id=' . $lead_id . '&return_url=' . CRUDBooster::mainpath() . $caja . '&foreign_key=lead_id&label=Tickets'), 'Ticket Actualizado', 'success');
    }


    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate data input before update data is execute
    | ----------------------------------------------------------------------
    | @postdata = input post data
    | @id       = current id
    |
    */
    public function hook_before_edit(&$postdata, $id)
    {
        //Your code here
    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command after edit public static function called
    | ----------------------------------------------------------------------
    | @id       = current id
    |
    */
    public function hook_after_edit($id)
    {
        //Your code here
    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command before delete public static function called
    | ----------------------------------------------------------------------
    | @id       = current id
    |
    */
    public function hook_before_delete($id)
    {
        //Your code here
    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command after delete public static function called
    | ----------------------------------------------------------------------
    | @id       = current id
    |
    */
    public function hook_after_delete($id)
    {
        //Your code here
    }

    public function getAdd()
    {

        //Create an Auth

        if (!CRUDBooster::isCreate() && $this->global_privilege == false || $this->button_add == false) {
            CRUDBooster::redirect(CRUDBooster::adminPath(), trans("crudbooster.denied_access"));
        }

        $lead_id = $_GET['parent_id'];


        $query =     DB::table('leads')
            ->select(
                'leads.name as nombre',
                'prefijo',
                'telefono',
                'tel_full',
                'lead_statuses.name as estado',
                'status_id',
                'canals.name as canal',
                'canal_id',
                'detalle',
                'proxima_accion',
                'situacions.name as situacion',
                'situacion_id',
                'products.name as producto',
                'product_id'
            )
            ->join('lead_statuses', 'leads.status_id', 'lead_statuses.id')
            ->join('canals', 'leads.canal_id', 'canals.id')
            ->join('products', 'leads.product_id', 'products.id')
            ->join('situacions', 'situacion_id', 'situacions.id')
            ->where('leads.id', $lead_id)->get();



        $color = "bg-yellow";
        //$acciones 		= ProximaAccion::orderby('name','ASC')->pluck('name','id');
        $s = DB::table('lead_statuses_situacions')
            ->select('lead_statuses_situacions.situacions_id', 'situacions.name')
            ->join('situacions', 'situacions.id', 'lead_statuses_situacions.situacions_id')
            ->where('lead_statuses_situacions.lead_statuses_id', $query[0]->status_id)
            ->get()->toArray();

        $situaciones = array();
        foreach ($s as $key => $value) {
            $situaciones[$value->situacions_id] = $value->name;
        }




        //dd($situaciones);
        //$situaciones 	= Situacion::orderby('name','ASC')
        //				->has('lead_statuses',2)
        //	     		->pluck('name','id');

        $a = DB::table('lead_statuses_proxima_accion')
            ->select('lead_statuses_proxima_accion.proxima_accions_id', 'proxima_accions.name')
            ->join('proxima_accions', 'proxima_accions.id', 'lead_statuses_proxima_accion.proxima_accions_id')
            ->where('lead_statuses_proxima_accion.lead_statuses_id', $query[0]->status_id)
            ->get()->toArray();
        $acciones = array();

        foreach ($a as $key => $value) {
            $acciones[$value->proxima_accions_id] = $value->name;
        }


        //$acciones 	 	= ProximaAccion::orderby('name','ASC')
        //->has('lead_statuses',2)
        //->pluck('name','id');

        $data = [];
        $data['page_title']        = 'Añadir Tickets';
        $data['lead_id']           = $lead_id;
        $data['name']              = $query[0]->nombre;
        $data['prefijo']           = $query[0]->prefijo;
        $data['telefono']          = $query[0]->telefono;
        $data['tel_full']          = $query[0]->tel_full;
        $data['estado']            = $query[0]->estado;
        $data['status_id']         = $query[0]->status_id;
        $data['canal_id']          = $query[0]->canal_id;
        $data['canal']             = $query[0]->canal;
        $data['product_id']        = $query[0]->product_id;
        $data['producto']          = $query[0]->producto;
        $data['situacion_id']      = $query[0]->situacion_id;
        $data['situacion']         = $query[0]->situacion;
        $data['prox_accion']       = $query[0]->proxima_accion;
        $data['color']             = $color;
        $data['acciones']          = $acciones;
        $data['situaciones']       = $situaciones;

        //dd($data['product_id']);

        //Please use cbView method instead view method from laravel
        $this->cbView('add_tickets', $data);
    }

    public function addTicketManual($id)
    {
        $data = DB::table('leads')->select('id', 'name', 'canal_id', 'detalle', 'proxima_accion', 'situacion_id', 'product_id')->where('id', $id)->get();

        DB::table('tickets')->insert([
            [
                'status_id'         =>  2,
                'lead_id'           =>  $id,
                'user_id'           =>  CRUDBooster::myId(),
                'canal_id'          =>  $data[0]->canal_id,
                'detalle'           =>  $data[0]->detalle,
                'proxima_accion'    =>  $data[0]->proxima_accion,
                'situacion_id'      =>    $data[0]->situacion_id,
                'product_id'        =>    $data[0]->product_id,
                'created_at'        =>  Carbon::now()
            ]

        ]);
        return redirect(route('dash'));
    }
}
