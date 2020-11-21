<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use App\LeadStatus;

class Situacion extends Model
{
    use Notifiable;
    protected $fillable = [
        'name',
    ];
   	public function lead_statuses()
    {
        return $this->belongsToMany(LeadStatus::class,'lead_statuses_situacions','lead_statuses_id','situacions_id');
    }
}
