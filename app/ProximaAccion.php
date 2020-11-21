<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use App\LeadStatus;

class ProximaAccion extends Model
{
    use Notifiable;
    protected $fillable = [
        'name', 'lead_statuses_id'
    ];
   	public function lead_statuses()
    {
        return $this->belongsToMany(LeadStatus::class,'lead_statuses_proxima_accion','proxima_accions_id','lead_statuses_id');
    }
}
