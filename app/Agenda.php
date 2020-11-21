<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Agenda extends Model
{
    use Notifiable;

    protected $table = 'agendas';

    protected $fillable = [
           [ 'lead_id', 'fecha', 'hora', 'situacions_id', 'detalle' ,'status', 'user_id', 'domicilio','altura','depto','cp','localidad']
       ];
}
