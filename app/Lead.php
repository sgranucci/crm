<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Lead extends Model
{
    use Notifiable;

    protected $fillable = [
           [ 'name', 'email', 'prefijo', 'telefono', 'tel_full' ,'status_id', 'user_id', 'canal_id',  'detalle', 'proxima_accion' , 'situacion_id' ,'product_id' ]
       ];
}
