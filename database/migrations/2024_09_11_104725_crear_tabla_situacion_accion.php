<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaSituacionAccion extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('situacion_accion', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('situacions_id');
            //$table->foreign('situacion_id', 'fk_situacion_accion_situacions')->references('id')->on('situacions')->onDelete('cascade')->onUpdate('cascade');
            $table->unsignedBigInteger('proxima_accions_id');
            //$table->foreign('accion_id', 'fk_situacion_accion_proxima_accions')->references('id')->on('proxima_accions')->onDelete('restrict')->onUpdate('restrict');
            $table->timestamps();
            $table->charset = 'utf8mb4';
            $table->collation = 'utf8mb4_spanish_ci';
        });    
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('situacion_accion');
    }
}
