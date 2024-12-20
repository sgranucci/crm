@extends('crudbooster::admin_template')
<title>Calendario</title>

@section('content')
<div class='box box-default'>
    <div class='box-heading'> 
		<div class="col-md-3">
    		<div class='input-group dest_user'>
				<span class="input-group-text"><i class="fa fa-user"></i></span>
				{!! Form::open(['route' => 'calendarioFiltrado', 'method' => 'GET']) !!}
            	{!! Form::label ('Destino', 'Filtra usuario:' ) !!}
            	{!! Form::select ('filtro_usuario', $dest_user_id, $usuario, ['class'=> 'form-control select2' , 'id' => 'filtro_usuario'])!!}
				<span class="input-group-prepend">
					<button type="submit" class="btn btn-default">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</span>
				{!! Form::close() !!}
			</div>
    	</div>
	</div>
   	<div class='box-body'>	
				<div id='calendario'></div>
	</div>
</div>

@endsection
@push('scripts')
	<script type="text/javascript">
	$(document).ready(function() {
    	var hoy = new Date().toDateString("Y-m-d");
   
		$('#calendario').fullCalendar({
		header: {
        	left: 'prev,next today',
        	center: 'title',
        	right: 'month,agendaWeek,agendaDay,listWeek'
      	},
      	defaultDate: hoy,
      	aspectRatio: 2	,
      	navLinks: true, // can click day/week names to navigate views
      	editable: false,
      	eventLimit: true, // allow "more" link when too many events
        
      	events: [
        @foreach ($agenda as $ag)
			@php $inicial = ''; @endphp
			@for ($i = 0; $i < strlen($ag->usuario); $i++)
				@if (substr($ag->usuario, $i, 1) === strtoupper(substr($ag->usuario, $i, 1)))
					@php $inicial .= substr($ag->usuario, $i, 1); @endphp
				@endif
			@endfor
			@php $inicial=str_replace(' ', '', $inicial); @endphp
        	{
          		title: '{{ $inicial.'|'. $ag->nombre. ' - '. $ag->status  }}',
          		start: '{{ $ag->fecha.' '.$ag->hora }}',
          		end:   '{{ $ag->fecha.' '.$ag->hora }}',
          		@if ($ag->status == "Lead")
          			color: 'red',
          			@php
          				$path = CRUDBooster::adminPath() ."/leads?q=".$ag->id;
          			@endphp
          		@endif
          		@if ($ag->status == "Contacto")
          			color: 'orange',
               		@php
           				$path = CRUDBooster::adminPath() ."/contacto?q=".$ag->id;
           			@endphp
          		@endif
          		@if ($ag->status == "Prospect")
          			color: 'green',
					@php
						$path = CRUDBooster::adminPath() ."/prospect?q=".$ag->id;
					@endphp
				@endif
          		@if ($ag->status == "Cliente")
          			color: 'grey',
          			@php
          				$path = CRUDBooster::adminPath() ."/clientes?q=".$ag->id;
          			@endphp
          		@endif
          		@if ($ag->status == "Historico")
          			color: 'blue',
          			@php
          				$path = CRUDBooster::adminPath() ."/historicos?q=".$ag->id;
          			@endphp
          		@endif

	       		url: '{{ $path }}'
        	},
        @endforeach
        
        ]
    	});
    });  	
</script>
@endpush
