<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use App\ProximaAccion;
use App\Situacion;

class LeadStatus extends Model
{
    use Notifiable;
    protected $fillable = [
        'name'
    ];

    public function proxima_accions()
    {
        return $this->belongsToMany(ProximaAccion::class);
    }
    
    public function situacions()
    {
        return $this->belongsToMany(Situacion::class,'lead_statuses_situacions','situacions_id','lead_statuses_id');
    }

}
