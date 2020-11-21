@extends('crudbooster::admin_template')
<title>Calendario</title>

@section('content')
<div class='box box-default'>
    <div class='box-heading'> </div>
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
        	{
          		title: '{{ $ag->nombre. ' - '. $ag->status  }}',
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
          			@if ($ag->proxima_accion == 3 || $ag->proxima_accion == 15 || $ag->proxima_accion == 18 || $ag->proxima_accion == 1)
                  @php
            				$path = CRUDBooster::adminPath() ."/contacto?q=".$ag->id;
            			@endphp
                @endif
                @if ($ag->proxima_accion == 10 || $ag->proxima_accion == 11 || $ag->proxima_accion == 4)
                  @php
                    $path = CRUDBooster::adminPath() ."/contactoFacilitador?q=".$ag->id;
                  @endphp
                @endif
          		@endif
          		@if ($ag->status == "Prospect")
          			color: 'green',
          			@if ($ag->proxima_accion == 12)
                  @php
            				$path = CRUDBooster::adminPath() ."/prospectFacilitador?q=".$ag->id;
            			@endphp
                @else
                  @php
                    $path = CRUDBooster::adminPath() ."/prospect?q=".$ag->id;
                  @endphp
                @endif
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
