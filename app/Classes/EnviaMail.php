<?php
namespace App\Classes;
 
use App\Mail\CargaTicket;
use Illuminate\Support\Facades\Mail;
 
class EnviaMail
{
    function SendTicketCargado($contenido)
    {
	if ($contenido['email_usuario'] == 'ebarbonetti@sailinginversiones.com' ||
	    $contenido['email_usuario'] == 'nfernandez@sailinginversiones.com' ||
	    $contenido['email_usuario'] == 'abruno@sailinginversiones.com' ||
	    $contenido['email_usuario'] == 'gmedinanarro@sailinginversiones.com' ||
	    $contenido['email_usuario'] == 'complianceoperativo@sailinginversiones.com' ||
	    $contenido['email_usuario'] == 'bazzariti@sailinginversiones.com')
	{
		$contenido['email_usuario'] = "contacto@sailinginversiones.com";
        	$objMail = new \stdClass();
        	$objMail->ticket_id = $contenido['ticket_id'];
        	$objMail->nombre = $contenido['nombre'];
        	$objMail->sender = 'CRM';
        	$objMail->receiver = $contenido['nombre_usuario'];
        	$objMail->canal = $contenido['canal'];
        	$objMail->producto = $contenido['producto'];
        	$objMail->email = $contenido['email'];
        	$objMail->telefono = $contenido['telefono'];
        	$objMail->detalle = $contenido['detalle'];
        	$objMail->prox_accion = $contenido['prox_accion'];
        	$objMail->situacion = $contenido['situacion'];
        	$objMail->estado = $contenido['estado'];
	 
        	Mail::to($contenido['email_usuario'])->send(new CargaTicket($objMail));
	}
    }
}

