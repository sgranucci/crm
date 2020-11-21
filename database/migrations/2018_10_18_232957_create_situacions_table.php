<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSituacionsTable extends Migration
{
    public function up()
    {
        Schema::create('situacions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->timestamps();
        });

        Schema::create('lead_statuses_situacions', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('lead_statuses_id');
            $table->integer('situacions_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('situacions');
        Schema::dropIfExists('lead_statuses_situacions');
    }
}


