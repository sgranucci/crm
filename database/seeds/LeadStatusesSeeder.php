<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class LeadStatusesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('lead_statuses')->insert([
        	[
  	            'name'  			=> 'Lead',
	            'created_at'		=> Carbon::now(),
	            'updated_at'		=> Carbon::now()
        	],
        	[
	        	'name'  			=> 'Contacto',
	            'created_at'		=> Carbon::now(),
	            'updated_at'		=> Carbon::now()	
		    ]
		]);
    }
}
