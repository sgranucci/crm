<?php
namespace App\Http\Controllers;
 
use App\Http\Controllers\Controller;
use App\Mail\CargaTicket;
use Illuminate\Support\Facades\Mail;
 
class MailController extends Controller
{
    public function send_ticket($contenido)
    {
        $objMail = new \stdClass();
        $objMail->nombre = $contenido->nombre;
        $objMail->sender = 'CRM';
        $objMail->receiver = $contenido->nombre_usuario;
        $objMail->canal = $contenido->canal;
        $objMail->producto = $contenido->producto;
        $objMail->email = $contenido->email;
        $objMail->telefono = $contenido->telefono;
        $objMail->detalle = $contenido->detalle;
        $objMail->prox_accion = $contenido->prox_accion;
        $objMail->situacion = $contenido->situacion;
 
        Mail::to("sergiogranucci@gmail.com")->send(new CargaTicket($objMail));
    }
}
