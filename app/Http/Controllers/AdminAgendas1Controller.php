<?php namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;

class AdminAgendas1Controller extends \crocodicstudio\crudbooster\controllers\CBController
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
        $this->button_add = false;
        $this->button_edit = false;
        $this->button_delete = true;
        $this->button_detail = false;
        $this->button_show = false;
        $this->button_filter = true;
        $this->button_import = false;
        $this->button_export = false;
        $this->table = "agendas";
        # END CONFIGURATION DO NOT REMOVE THIS LINE

        # START COLUMNS DO NOT REMOVE THIS LINE
        $this->col = [];
        $this->col[] = ["label"=>"ID","name"=>"lead_id"];
        $this->col[] = ["label"=>"Nombre","name"=>"lead_id","join"=>"leads,name","callback"=>function ($row) {

                //dd($row->leads_proxima_accion);
            if ($row->lead_id) {
                if ($row->leads_status_id==6) {
                    $path = "clientes";
                }
                if ($row->leads_status_id==5) {
                    $path = "historicos";
                }
                if ($row->leads_status_id==3) {
                    if ($row->leads_proxima_accion==10 || $row->leads_proxima_accion==4 || $row->leads_proxima_accion==11) {
                        $path = "prospectFacilitador";
                    } else {
                        $path = "prospect";
                    }
                }
                if ($row->leads_status_id==2) {
                    if ($row->leads_proxima_accion==10 || $row->leads_proxima_accion==4 || $row->leads_proxima_accion==11) {
                        $path = "contactoFacilitador";
                    }
                    if ($row->leads_proxima_accion==3 || $row->leads_proxima_accion==15 || $row->leads_proxima_accion==18 || $row->leads_proxima_accion==1) {
                        $path = "contacto";
                    }
                }
                if ($row->leads_status_id==1) {
                    $path = "leads";
                }

                //return "<a href='".CRUDBooster::adminPath()."/".$path."?q=".$row->leads_email."'>".$row->leads_name."</a>";
                return "<a href='".CRUDBooster::adminPath()."/".$path."?q=".$row->leads_id."'>".$row->leads_name."</a>";
            }
        }];

        $this->col[] = ["label"=>"Contactado por","name"=>"user_id","join"=>"cms_users,name"];
        $this->col[] = ["label"=>"Fecha","name"=>"fecha"];
        $this->col[] = ["label"=>"Hora","name"=>"hora"];
        $this->col[] = ["label"=>"Estado","name"=>"status"];
        $this->col[] = ["label"=>"Detalle","name"=>"detalle"];
        $this->col[] = ["label"=>"Mail","name"=>"lead_id","join"=>"leads,email"];
        $this->col[] = ["label"=>"Acción","name"=>"(SELECT proxima_accions.name FROM tickets JOIN proxima_accions ON proxima_accions.id = tickets.proxima_accion WHERE lead_id = leads.id order BY tickets.id DESC LIMIT 1) as accion"];
        $this->col[] = ["label"=>"Situación","name"=>"situacions_id","join"=>"situacions,name"];

        # END COLUMNS DO NOT REMOVE THIS LINE

        # START FORM DO NOT REMOVE THIS LINE
        $this->form = [];
        $this->form[] = ['label'=>'Lead Id','name'=>'lead_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'lead,id'];
        $this->form[] = ['label'=>'Fecha','name'=>'fecha','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
        $this->form[] = ['label'=>'Hora','name'=>'hora','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
        $this->form[] = ['label'=>'Situacions Id','name'=>'situacions_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'situacions,name'];
        $this->form[] = ['label'=>'Detalle','name'=>'detalle','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
        $this->form[] = ['label'=>'Status','name'=>'status','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
        $this->form[] = ['label'=>'User Id','name'=>'user_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'user,id'];
        # END FORM DO NOT REMOVE THIS LINE

        # OLD START FORM
        //$this->form = [];
        //$this->form[] = ['label'=>'Lead Id','name'=>'lead_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'lead,id'];
        //$this->form[] = ['label'=>'Fecha','name'=>'fecha','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
        //$this->form[] = ['label'=>'Hora','name'=>'hora','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
        //$this->form[] = ['label'=>'Situacions Id','name'=>'situacions_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'situacions,name'];
        //$this->form[] = ['label'=>'Detalle','name'=>'detalle','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
        //$this->form[] = ['label'=>'Status','name'=>'status','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
        //$this->form[] = ['label'=>'User Id','name'=>'user_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'user,id'];
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
	$this->button_selected[] = ['label'=>'Set Active','icon'=>'fa fa-check','name'=>'set_active'];


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
  if($button_name == 'set_active') {
	echo "xx";
    }
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
        $carbon = \Carbon\Carbon::now()->format('Y-m-d');
        //dd($carbon);
        // $query->where('agendas.fecha', '<=', $carbon)->where('agendas.status', 'Pendiente');
        $query->where('agendas.status', 'Pendiente');
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
        //Your code here
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
        //Your code here
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
       	$agenda = DB::table('agendas')->select('eventID', 'dest_user_id')->where('id',$id)->first();

		if ($agenda)
		{
        	$dest_user = DB::table('cms_users')->select('calendarioID')->where('id', $agenda->dest_user_id)->first();
			if ($dest_user)
			{
				$calendarioID = $dest_user->calendarioID;

				$comando = "cd /var/www/html/google; php borra-evento.php ".$calendarioID." ".$agenda->eventID;
				$ret = system($comando, $retorno);
			}
		}
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



    //By the way, you can still create your own method in here... :)
}
