<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class RolSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('rols')->insert([
        	[
  	            'name'  			=> 'Administrador',
	            'created_at'		=> Carbon::now(),
	            'updated_at'		=> Carbon::now()
        	],
        	[
	        	'name'  			=> 'Operador',
	            'created_at'		=> Carbon::now(),
	            'updated_at'		=> Carbon::now()	
		    ]
		]);
    }
}
