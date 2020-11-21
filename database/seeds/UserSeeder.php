<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name'  			=> 'Api Saliling',
            'email'				=> 'api@sailing.com',
            'password'			=> '$2y$10$oxIDy1RUlRZmGuvxO3kWPuRPZ4Dxc1SupMmNKO6iBt1tl836NaV7e',
            'remember_token' 	=> 'Ws2ef8iPDymzLxVW0z1ca61A433SyCh0n0o5IahEYUKSEpw5VR8q4p6Ral95',
            'api_token'			=> 'qkVxObqfGdy3yVbEVTkpor612PJL7aS8VMqt5mfgAbRXuu1ubuKqLTbykTPR',
            'rol_id'            =>  1,
            'created_at'		=> Carbon::now(),
            'updated_at'		=> Carbon::now()
	    ]);
    }
}
