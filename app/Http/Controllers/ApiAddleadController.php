<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiAddleadController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "leads";
				$this->permalink   = "addlead";
				$this->method_type = "post";
		    }


		    public function hook_before(&$postdata) {

		        $cond = DB::table('leads')->where('email',$postdata['email'])->first();

		        if (!empty($cond)){
					   $resp = response()->json(['api_status'=>501,'api_message'=>'Email Repetido'])
								 ->header('Access-Control-Allow-Origin','*')
								 ->header('Access-Control-Allow-Methods','GET,POST,PUT,DELETE,OPTION');
       				$resp->send();
       				exit;
     			}

		        if ($postdata['product_id']	== 1){
		        	$postdata['product_id']	= 17;
		        	$postdata['canal_id'] 	= 29;
					$postdata['proxima_accion'] 		= 10;
		        }

		        if ($postdata['product_id']	== 2){
		        	$postdata['product_id']	= 18;
		        	$postdata['canal_id'] 	= 23;
							$postdata['proxima_accion'] 		= 3;
		        }

		        if ($postdata['product_id']	== 3){
		        	$postdata['product_id']	= 16;
		        	$postdata['canal_id'] 	= 21;
							$postdata['proxima_accion'] 		= 3;
		        }

		        if ($postdata['product_id']	== 4){
		        	$postdata['product_id']	= 15;
		        	$postdata['canal_id'] 	= 22;
							$postdata['proxima_accion'] 		= 3;
		        }


		        $postdata['tel_full']				= $postdata['telefono'];
		        $postdata['status_id'] 				= 1;
		        $postdata['user_id']				= 1;
		        $postdata['situacion_id'] 			= 1;
				if (isset($postdata['mensaje'])){
					$postdata['detalle'] 				= $postdata['mensaje'];
				}else{
					$postdata['detalle'] 				= "Sin Comentarios";
				}


		    }


		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {

				if (isset($postdata['mensaje'])){
					$detalle = $postdata['mensaje'];
				}else{
					$detalle = 'Sin Comentarios';
				}


			    if ($postdata['product_id']	== 1){
		        	$postdata['product_id']	= 17;
		        }

		        if ($postdata['product_id']	== 2){
		        	$postdata['product_id']	= 1;
		        }

		        if ($postdata['product_id']	== 5){
		        	$postdata['product_id']	= 2;
		        }


		        DB::table('leads')
            		->where('id', $result['id'])
            		->update([ 'product_id' => $postdata['product_id'] ]);

			    DB::table('tickets')->insert([
			    	[
			    		'status_id' 				=> 1,
			    		'lead_id' 					=> $result['id'],
			    		'user_id'					=> 16,
			    		'canal_id'					=> 29,
						'detalle'					=> $detalle,
						'product_id'				=> $postdata['product_id'],
			    		'proxima_accion'			=> 10,
			    		'situacion_id'				=> 1,
			    		'telefono'					=> $postdata['telefono'],
			    		'created_at'			    => \Carbon\Carbon::now()


			    	]
			    ]);


		    }

		}
