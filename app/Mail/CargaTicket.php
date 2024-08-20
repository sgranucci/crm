<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class CargaTicket extends Mailable
{
    use Queueable, SerializesModels;

    public $body;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($body)
    {
        // $this->body = $body;
	$this->body = $body;
    }

    public function build()
    {
        return $this->subject('Se cargo un ticket en CRM!')
		->from('noresponder@sailinginversiones.com')
		->view('mails.ticket');
    }
}
