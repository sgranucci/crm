<?php namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;
use Carbon\Carbon;
use App\Ticket;
use App\Lead;

class AdminContactoController extends \crocodicstudio\crudbooster\controllers\CBController
{
    public function cbInit()
    {
			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "name";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = false;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = false;
			$this->button_detail = true;
			$this->button_show = false;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "leads";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
        $this->col = [];
        $this->col[] = ["label"=>"Creado","name"=>"created_at"];
        $this->col[] = ["label"=>"Ult. Ticket","name"=>"(SELECT created_at FROM tickets WHERE tickets.lead_id = leads.id ORDER BY tickets.id DESC LIMIT 1) as UltTicket"];
        $this->col[] = ["label"=>"Nombre y Apellido","name"=>"name"];
        $this->col[] = ["label"=>"Email","name"=>"email"];
        $this->col[] = ["label"=>"Telefono","name"=>"tel_full"];
        $this->col[] = ["label"=>"Canal","name"=>"canal_id","join"=>"canals,name"];
        $this->col[] = ["label"=>"Producto","name"=>"product_id","join"=>"products,name"];
        $this->col[] = ["label"=>"Observaciones","name"=>"detalle","width"=>"300"];
        $this->col[] = ["label"=>"Situacion","name"=>"situacion_id","join"=>"situacions,name"];
        $this->col[] = ["label"=>"Acción","name"=>"proxima_accion","join"=>"proxima_accions,name"];
        $this->col[] = ["label"=>"Manager","name"=>"manager_id","join"=>"cms_users,name"];
        # END COLUMNS DO NOT REMOVE THIS LINE

        # START FORM DO NOT REMOVE THIS LINE
        $this->form = [];
        $this->form[] = ['label'=>'Nombre y Apellido:','name'=>'name','type'=>'text','validation'=>'required|string|min:3|max:70','width'=>'col-sm-10','placeholder'=>'Puedes introducir solo una letra'];
        $this->form[] = ['label'=>'Email','name'=>'email','type'=>'email','validation'=>'required|min:1|max:255|email|unique:leads','width'=>'col-sm-10','placeholder'=>'Introduce una dirección de correo electrónico válida'];
        $this->form[] = ['label'=>'Prefijo','name'=>'prefijo','type'=>'text','validation'=>'string|max:6','width'=>'col-sm-10'];
        $this->form[] = ['label'=>'Telefono','name'=>'telefono','type'=>'text','validation'=>'string|max:12','width'=>'col-sm-10'];
        $this->form[] = ['label'=>'Canal','name'=>'canal_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'canals,name','datatable_where'=>'estado_id = 1'];
        //$this->form[] = ['label'=>'Producto','name'=>'product_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'products,name'];
        $this->form[] = ['label'=>'Proxima Accion','name'=>'proxima_accion','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-9','datatable'=>'proxima_accions,name'];
        $this->form[] = ['label'=>'Observaciones','name'=>'detalle','type'=>'textarea','validation'=>'required','width'=>'col-sm-9'];
        $this->form[] = ['label'=>'Situación:','name'=>'situacion_id','type'=>'select2','validation'=>'required','width'=>'col-sm-9','datatable'=>'situacions,name'];
        $this->form[] = ['label'=>'Manager:','name'=>'manager_id','type'=>'select2','validation'=>'nullable|integer','width'=>'col-sm-10','datatable'=>'cms_users,name','datatable_where'=>'id != 3 and id != 1 and id != 16 and id != 2 and status != \'Inactivo\''];
        # END FORM DO NOT REMOVE THIS LINE

        # OLD START FORM
        //$this->form = [];
        //$this->form[] = ['label'=>'Nombre y Apellido:','name'=>'name','type'=>'text','validation'=>'required|string|min:3|max:70','width'=>'col-sm-10','placeholder'=>'Puedes introducir solo una letra'];
        //$this->form[] = ['label'=>'Email','name'=>'email','type'=>'email','validation'=>'required|min:1|max:255|email|unique:leads','width'=>'col-sm-10','placeholder'=>'Introduce una dirección de correo electrónico válida'];
        //$this->form[] = ['label'=>'Prefijo','name'=>'prefijo','type'=>'text','validation'=>'string|max:6','width'=>'col-sm-10'];
        //$this->form[] = ['label'=>'Telefono','name'=>'telefono','type'=>'text','validation'=>'string|max:12','width'=>'col-sm-10'];
        //$this->form[] = ['label'=>'Canal','name'=>'canal_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'canals,name'];
        //$this->form[] = ['label'=>'Producto','name'=>'product_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'products,name'];
        //$this->form[] = ['label'=>'Proxima Accion','name'=>'proxima_accion','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-9','datatable'=>'proxima_accions,name'];
        //$this->form[] = ['label'=>'Observaciones','name'=>'detalle','type'=>'textarea','validation'=>'required','width'=>'col-sm-9'];
        //$this->form[] = ['label'=>'Situación:','name'=>'situacion_id','type'=>'select2','validation'=>'required','width'=>'col-sm-9','datatable'=>'situacions,name'];
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
        // $this->sub_module[] = ['label'=>'Tickets','path'=>'tickets','parent_columns'=>'name,tel_full','foreign_key'=>'lead_id','button_color'=>'danger','button_icon'=>'fa fa-bars'];


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
        $ventana72 = Carbon::now()->subDays(3)->format('Y-m-d');
        $ventana48 = Carbon::now()->subDays(2)->format('Y-m-d');
        $ventana24 = Carbon::now()->subDays(1)->format('Y-m-d');
        $this->table_row_color[] = ['condition'=>"[UltTicket] < '$ventana72'  ","color"=>"danger"];
        $this->table_row_color[] = ['condition'=>"[UltTicket] < '$ventana24' and  [UltTicket] > '$ventana72' ","color"=>"warning"];
        $this->table_row_color[] = ['condition'=>"[UltTicket] > '$ventana24'  ","color"=>"success"];

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
        $query->where('status_id', '=', 2);
                                //->WhereIn('proxima_accion', [3,15,18,1]);
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
        $postdata['tel_full'] = $postdata['prefijo'] . $postdata['telefono'];
        $postdata['user_id']  = CRUDBooster::myId();
        $postdata['status_id']  = 2;
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
        $data = DB::table('leads')->select('id', 'name', 'canal_id', 'detalle', 'proxima_accion', 'situacion_id', 'product_id')->where('id', $id)->get();

        DB::table('tickets')->insert([
                [ 'status_id' 		=>  2,
                  'lead_id' 		=>  $id,
                  'user_id' 		=>  CRUDBooster::myId(),
                  'canal_id' 		=>  $data[0]->canal_id,
                  'detalle' 		=>  $data[0]->detalle,
                  'proxima_accion'	=>  $data[0]->proxima_accion,
                  'situacion_id'	=>	$data[0]->situacion_id,
                  'product_id'		=>	$data[0]->product_id,
                  'created_at'		=>  Carbon::now()
                ]

            ]);
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
        DB::table('tickets')->where('lead_id', '=', $id)->delete();
    }

    public function getIndex()
    {
        //First, Add an auth
        if (!CRUDBooster::isView()) {
            CRUDBooster::redirect(CRUDBooster::adminPath(), trans('crudbooster.denied_access'));
        }

        //Create your own query
        $ultimoTicket = DB::table('tickets')
                               ->select('lead_id', DB::raw('MAX(created_at) as UltTicket'))
                               ->groupBy('lead_id');
        if (isset($_GET['q'])){
            $operador = "=";
            $test = $_GET['q'];
        }else{
            $operador = '!=';
            $test = 'NULL';
        }

        //dd($ultimoTicket);
        $data = [];
        $data['page_title'] = 'Contactos';
        $data['url'] = CRUDBooster::adminpath()."/contacto"; 
        $data['result'] = DB::table('leads')
                            ->select(
                                'leads.id',
                                'leads.name',
                                'leads.created_at',
                                'ultimoTickets.UltTicket as ult',
                                'leads.status_id',
                                'leads.email',
                                'leads.tel_full',
                                'leads.detalle',
                                'leads.comitente',
                                'leads.condimino1',
                                'leads.condimino2',
                                'leads.condimino3',
								'cms_users.name as manager',	
                                'canals.name as canal',
                                'products.name as producto',
                                'proxima_accions.name as accion',
                                'situacions.name as situacion',
                                'situacions.id as situacion_id'
                            )
                            //->join('tickets', 'tickets.lead_id', 'leads.id')
                            ->joinSub($ultimoTicket, 'ultimoTickets', function ($join) {
                                $join->on('leads.id', '=', 'ultimoTickets.lead_id');
                            })
                            ->join('canals', 'canals.id', 'leads.canal_id')
                            ->join('products', 'products.id', 'leads.product_id')
                            ->join('proxima_accions', 'proxima_accions.id', 'leads.proxima_accion')
                            ->join('situacions', 'situacions.id', 'leads.situacion_id')
                                                    ->where('status_id', '=', 2)
                                                    ->where('leads.id', $operador ,$test)
                                                    //->WhereIn('proxima_accion', [3,15,18,1,7,13,22])
                        	->leftjoin('cms_users', 'cms_users.id', 'leads.manager_id')
                            ->orderby('ult', 'desc')
                            ->get();
        $agenda_estado = [];
        foreach ($data['result'] as $key => $value) {
            $sql1 = DB::table('agendas')
                        ->select('status', 'fecha', 'hora')
                        ->where('lead_id', $value->id)
                        ->orderBy('fecha', 'DESC')
                        ->orderBy('hora', 'DESC')
                        ->first();
            $agenda_estado[$value->id]=$sql1->status;
            $agenda_fecha[$value->id]=$sql1->fecha . ' ' . $sql1->hora;
        }

        $data['agenda_estado'] = $agenda_estado;

        $data['agenda_fecha'] = $agenda_fecha;

        $data['ventana21'] = Carbon::now()->subDays(16)->format('Y-m-d');
        $data['ventana20'] = Carbon::now()->subDays(15)->format('Y-m-d');
        $data['ventana10'] = Carbon::now()->subDays(10)->format('Y-m-d');

        $usuario = DB::table('cms_users')->select('id_cms_privileges')->where('id', CRUDBooster::myId())->first();
        $privilegio = $usuario->id_cms_privileges;

        $data['privilegio'] = $privilegio;
        
        //SELECT created_at FROM tickets WHERE tickets.lead_id = leads.id ORDER BY tickets.id DESC LIMIT 1) as UltTicket"
        //Create a view. Please use `cbView` method instead of view method from laravel.
        $this->cbView('clientes', $data);
    }
}
