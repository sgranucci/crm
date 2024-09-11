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

		        if ($postdata['canal_id'] != 40)
				{
		        	//if (!empty($cond)){
					   //$resp = response()->json(['api_status'=>501,'api_message'=>'Email Repetido'])
						//		 ->header('Access-Control-Allow-Origin','*')
						//		 ->header('Access-Control-Allow-Methods','GET,POST,PUT,DELETE,OPTION');
       					//$resp->send();
       					//exit;
     				//}
				}

		        if ($postdata['product_id']	== 1){
		        	$postdata['product_id']			= 1;
		        	$postdata['canal_id'] 			= 29;
					$postdata['proxima_accion']		= 10;
		        }

		        if ($postdata['product_id']	== 21){
		        	$postdata['product_id']			= 21;

					if ($postdata['canal_id'] != 40 && $postdata['canal_id'] != 33 &&
						$postdata['canal_id'] != 41)
		        		$postdata['canal_id'] 			= 30;

					$postdata['proxima_accion'] 	= 3;
		        }

		        // if ($postdata['product_id']	== 3){
		        // 	$postdata['product_id']	= 16;
		        // 	$postdata['canal_id'] 	= 21;
				// 			$postdata['proxima_accion'] 		= 3;
		        // }

		        // if ($postdata['product_id']	== 4){
		        // 	$postdata['product_id']	= 15;
		        // 	$postdata['canal_id'] 	= 22;
				// 			$postdata['proxima_accion'] 		= 3;
		        // }


		        $postdata['tel_full']					= $postdata['telefono'];
		        $postdata['status_id'] 					= 1;
		        $postdata['user_id']					= 1;
		        $postdata['situacion_id'] 				= 33;
				$postdata['proxima_accion'] 			= 42;
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

				$flAltaParcial = false;
				if ($postdata['canal_id'] == 40 || $postdata['canal_id'] == 41)
					$flAltaParcial = true;

			    if ($postdata['product_id']	== 1){
					$postdata['product_id']		= 1;
		        	$postdata['canal_id'] 		= 29;
		        }

		        if ($postdata['product_id']	== 21){
					if ($postdata['canal_id'] == 40)
						$postdata['canal_id']   	= 30;
					if ($postdata['canal_id'] == 41)
						$postdata['canal_id']   	= 33;
		        }

		        // if ($postdata['product_id']	== 5){
		        // 	$postdata['product_id']	= 2;
		        // }

				if ($flAltaParcial)
					$detalle = 'Carga Parcial';

		        // DB::table('leads')
            	// 	->where('id', $result['id'])
            	// 	->update([ 'product_id' => $postdata['product_id'] ]);
				$flOtroCanal = false;

				if ($result['id'] == '' || $result['id'] == null)
				{
		        	$res = DB::table('leads')->select('id')
											->where('email',$postdata['email'])
											->where('canal_id',$postdata['canal_id'])
											->first();

					if (!$res)
					{
		        		$res = DB::table('leads')->select('id', 'canal_id')
											->where('email',$postdata['email'])
											->first();

						// Si el canal encontrado es distinto de on-line lo deja activo y agrega un nuevo registro
						if ($res)
						{
							if ($res->canal_id == 30 || $res->canal_id == 33)
								$res = false;
							else
								$flOtroCanal = true;
						}

						if (!$res)
						{
							$postdata['telefono'] = "111";
							$postdata['user_id'] = 1;
	
        					$data = DB::table('leads')->insert([
													'name' => $postdata['name'], 
													'email' => $postdata['email'], 
													'prefijo' => null,
													'telefono' => $postdata['telefono'], 
													'tel_full' => $postdata['telefono'], 
													'canal_id' => $postdata['canal_id'], 
													'product_id' => $postdata['product_id'],
													'status_id' => 2,
													'user_id' => $postdata['user_id'],
													'proxima_accion' => 43,
													'detalle' => $detalle,
													'situacion_id' => 34,
													'comitente' => null,
													'manager_id' => $postdata['manager_id']
													]);
	
		        			$res = DB::table('leads')->select('id')
												->where('email',$postdata['email'])
												->where('canal_id',$postdata['canal_id'])
												->first();
							$id = $res->id;
						}
						else
							$id = $res->id;
					}
					else
					{
						$id = $res->id;
					}
				}
				else
				{
					// Trae registro nuevo
		        	$result = DB::table('leads')->select('id')
											->where('email',$postdata['email'])
											->where('canal_id',$postdata['canal_id'])
											->orderBy('id','desc')
											->first();

					// Si no encuentra registro con canal busca sin canal
					if (!$result)
					{
		        		$result = DB::table('leads')->select('id', 'canal_id')
											->where('email',$postdata['email'])
											->orderBy('id','desc')
											->first();

						// Si el canal encontrado es distinto de on-line lo deja activo y agrega un nuevo registro
						if ($result)
						{
							if ($result->canal_id == 30 || $result->canal_id == 33)
							{
								$postdata['telefono'] = "111";
								$postdata['user_id'] = 1;
		
        						$data = DB::table('leads')->insert([
													'name' => $postdata['name'], 
													'email' => $postdata['email'], 
													'prefijo' => null,
													'telefono' => $postdata['telefono'], 
													'tel_full' => $postdata['telefono'], 
													'canal_id' => $postdata['canal_id'], 
													'product_id' => $postdata['product_id'],
													'status_id' => 2,
													'user_id' => $postdata['user_id'],
													'proxima_accion' => 43,
													'detalle' => $detalle,
													'situacion_id' => 34,
													'comitente' => null,
													'manager_id' => $postdata['manager_id']
													]);
	
		        				$result = DB::table('leads')->select('id')
												->where('email',$postdata['email'])
												->where('canal_id',$postdata['canal_id'])
												->first();
							}
						}
						else
							$flOtroCanal = true;
					}

					// Si es alta parcial y existe lo lleva a contacto facilitador
					if (!$flOtroCanal)
					{
						if ($flAltaParcial)
						{
		        			$res = DB::table('leads')
											->where('id',$result['id'])
											->where('canal_id',$postdata['canal_id'])
											->update(['status_id' => 2,
													'proxima_accion' => 43]);
						}
						else // Si es alta definitiva lo borra del otro cajon
						{
		        			$res = DB::table('leads')->select('id')
											//->where('canal_id',$postdata['canal_id'])
											->where('email',$postdata['email'])->orderBy('id')->get();
					
							// Borra todos los leads del mismo email
		        			$borra = DB::table('leads')->where('id', '!=', $result->id)
													//->where('canal_id',$postdata['canal_id'])
													->where('email',$postdata['email'])
                                                    ->delete();

							// Actualiza los tickets al nuevo id
							foreach($res as $lead)
							{
								if ($lead->id != $result->id)
								{
		        					$ticket = DB::table('tickets')
												->where('lead_id',$lead->id)
												->update(['lead_id' => $result->id]);
								}
							}
						}
					}
					$id = $result->id;
				}

			    DB::table('tickets')->insert([
			    	[
			    		'status_id' 				=> 1,
			    		'lead_id' 					=> $id,
			    		'user_id'					=> 16,
			    		'canal_id'					=> $postdata['canal_id'],
						'detalle'					=> $detalle,
						'product_id'				=> $postdata['product_id'],
			    		'proxima_accion'			=> 42,
			    		'situacion_id'				=> 33,
			    		'telefono'					=> $postdata['telefono'],
			    		'created_at'			    => \Carbon\Carbon::now()
			    	]
			    ]);

				if ($flAltaParcial)
				{
					$res = DB::table('leads')
									->where('id',$id)
									->update(['status_id' => 2,
											'proxima_accion' => 43]);
				}
		    }

		}
