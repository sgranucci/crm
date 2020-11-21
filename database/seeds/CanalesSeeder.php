<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class CanalesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('canals')->insert([
        	[
  	            'name'  			=> 'Formulario Sailing',
	            'created_at'		=> Carbon::now(),
	            'updated_at'		=> Carbon::now()
        	],
        	[
	        	'name'  			=> 'Teléfono',
	            'created_at'		=> Carbon::now(),
	            'updated_at'		=> Carbon::now()	
		    ]
		]);
    }
}
