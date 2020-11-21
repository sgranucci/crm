<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Ticket extends Model
{
    use Notifiable;

    protected $fillable = [
           [ 'status_id', 'lead_id', 'user_id', 'canal_id',  'detalle', 'proxima_accion' , 'situacion_id' ,'product_id','domicilio','altura','depto','cp','localidad' ]
       ];
}
