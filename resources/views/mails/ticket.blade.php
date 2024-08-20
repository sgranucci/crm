<i>{{ $body->receiver }}</i>,
<p>Genero ticket Nro {{ $body->ticket_id }} </p>
 
<p><u>Cliente:</u></p>
 
<div>
<p><b>{{ $body->nombre }}</b></p>
</div>
 
<p>Canal: {{ $body->canal }} </p>
<p>Producto: {{ $body->producto }} </p>
<p>EMail: {{ $body->email }} </p>
<p>Telefono: {{ $body->telefono }} </p>
<p>Detalle: {{ $body->detalle }} </p>
<p>Prox.accion: {{ $body->prox_accion }} </p>
<p>Situacion: {{ $body->situacion }} </p>
<p>Estado: {{ $body->estado }} </p>
 
<br/>
<i>{{ $body->sender }}</i>
