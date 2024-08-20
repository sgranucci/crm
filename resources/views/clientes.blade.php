<!-- First you need to extend the CB layout -->
@extends('crudbooster::admin_template')
@section('content')
<!-- Your custom  HTML goes here -->

<table id="tabla-clientes" class='table table-striped table-bordered table-condensed order-column'>
    <thead>
        <tr>
            <th></th>
            <th>Fechas</th>
            <th>Nombre / Mail</th>
            <th>Canal / Producto</th>
            <th>Detalle</th>
            <th>Accion / Situación</th>
			@if ($page_title == 'Clientes')	
            	<th>Condomino</th>
			@endif
            <th>Manager</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>

        
        @foreach($result as $row)
        
        <tr>
            @if(\Carbon\Carbon::parse($row->ult)->format('Y-m-d') >= $ventana10 )
               <td width="10" style="background-color:green"></td>
            @endif
            @if(\Carbon\Carbon::parse($row->ult)->format('Y-m-d') < $ventana10 and \Carbon\Carbon::parse($row->ult)->format('Y-m-d') >= $ventana20 )
               <td width="10" style="background-color:yellow"></td>
            @endif
            @if(\Carbon\Carbon::parse($row->ult)->format('Y-m-d') <= $ventana21 )
               <td width="10" style="background-color:red"></td>
            @endif
            <td width="100">
                @if(isset($row->ult))
                  <b>Ti: </b> {{\Carbon\Carbon::parse($row->ult)->format('d/m/Y')}}        <br>
                @else
                <b>Ti: </b> Sin Ticket        <br>
                @endif
                <b>Cr: </b> {{\Carbon\Carbon::parse($row->created_at)->format('d/m/Y')}} <br>
                @if($agenda_estado[$row->id] == "Pendiente")
                  @if($agenda_fecha[$row->id] >= \Carbon\Carbon::parse(now())->format('Y-m-d h:i') )
                    <a class='btn btn-success btn-xs' href="{{CRUDBooster::adminpath()}}/agendas?q={{$row->email}}">
                      <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                    </a>
                  @endif
                  @if($agenda_fecha[$row->id] < \Carbon\Carbon::parse(now())->format('Y-m-d h:i') )
                    <a class='btn btn-danger btn-xs' href="{{CRUDBooster::adminpath()}}/agendas?q={{$row->email}}">
                      <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                    </a>
                  @endif
                @endif
                    {{--<a class='btn btn-danger btn-xs' href="{{CRUDBooster::adminpath()}}/agendas?q={{$row->email}}">
                      <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                    </a>--}}

                {{-- @if($agenda_estado[$row->id] == "Reunion Pendiente")
                  @if($agenda_fecha[$row->id] >= \Carbon\Carbon::parse(now())->format('Y-m-d') )
                    <a class='btn btn-success btn-xs' href="{{CRUDBooster::adminpath()}}/calendarioReuniones">
                      <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                    </a>
                  @endif
                  @if($agenda_fecha[$row->id] < \Carbon\Carbon::parse(now())->format('Y-m-d') )
                    <a class='btn btn-danger btn-xs' href="{{CRUDBooster::adminpath()}}/calendarioReuniones">
                      <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                    </a>
                  @endif
                @endif --}}
                
                @if($agenda_estado[$row->id] == "Reunion Domicilio")
                  @if($agenda_fecha[$row->id] >= \Carbon\Carbon::parse(now())->format('Y-m-d h:i') )
                    <a class='btn btn-warning btn-xs'  href="{{CRUDBooster::adminpath()}}/calendarioReuniones">
                      <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                    </a>
                  @endif
                  @if($agenda_fecha[$row->id] < \Carbon\Carbon::parse(now())->format('Y-m-d h:i'))
                    <a class='btn btn-danger btn-xs' href="{{CRUDBooster::adminpath()}}/calendarioReuniones">
                      <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                    </a>
                  @endif
                @endif
                @if($agenda_estado[$row->id] == "Reunion Oficina")
                                      
                  
                  @if($agenda_fecha[$row->id] >= \Carbon\Carbon::parse(now())->format('Y-m-d h:i'))
                    <a class='btn btn-info btn-xs' href="{{CRUDBooster::adminpath()}}/calendarioReuniones">
                      <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                    </a>
                  @endif
                  @if($agenda_fecha[$row->id] < \Carbon\Carbon::parse(now())->format('Y-m-d h:i'))
                    <a class='btn btn-danger btn-xs' href="{{CRUDBooster::adminpath()}}/calendarioReuniones">
                      <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                    </a>
                  @endif
                @endif
                @if($agenda_estado[$row->id] == null || $agenda_estado[$row->id] == 'Finalizado')
                  <a class='btn btn-danger btn-xs' href="#">
                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                  </a>
                @endif
            </td>
            <td>
                <b>{{$row->name}}</b><br>
                <small> {{$row->email}}</small><br>
                <b>Tel: {{ "( ". $row->tel_full . " )"}}</b>
            </td>
            <td width="100">
                <span class="label label-primary">{{$row->canal}}</span><br>
                <span class="label label-default"> {{$row->producto}}</span>
            </td>
            <td width="250"><small>{{$row->detalle}}</small></td>
            <td>
                <span class="label label-warning">{{$row->accion}}</span><br>
                <span class="label label-info"> {{$row->situacion}}</span><br>
                Ctte: <b><span class=" label label-success">{{$row->comitente}}</span></b>
            </td>
			@if ($page_title == 'Clientes')	
            	<td>
                	<small>
                    	c1: {{$row->condimino1}}<br>
                    	c2: {{$row->condimino2}}<br>
                    	c3: {{$row->condimino3}}
                	</small>
            	</td>
			@endif
            <td>
                <small>
                    {{$row->manager}}
                </small>
            </td>
            <td>
                <!-- To make sure we have read access, wee need to validate the privilege -->
                @if(CRUDBooster::isUpdate() && $button_edit)
                <a class='btn btn-success btn-xs' href='{{CRUDBooster::mainpath("edit/$row->id")}}'><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> </a>
                @endif
                <a class='btn btn-danger btn-xs'
                   href="{{CRUDBooster::adminpath()}}/tickets?parent_table=leads&parent_columns=name,tel_full&parent_columns_alias=&parent_id={{$row->id}}&return_url={{ $url }}&foreign_key=lead_id&label=Tickets">
                    <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>
                </a>
                {{-- @if(CRUDBooster::isDelete() && $button_edit)
                <a class='btn btn-danger btn-sm' href='{{CRUDBooster::mainpath("delete/$row->id")}}'><span class="glyphicon glyphicon-trash" aria-hidden="true"></a>
                    @endif --}}
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

<!-- ADD A PAGINATION -->
{{-- <p>{!! urldecode(str_replace("/?","?",$result->appends(Request::all())->render())) !!}</p> --}}
@endsection
@push('scripts')
<script type="text/javascript">
    $('#tabla-clientes').dataTable({
        "columnDefs": [{
            "targets": 0,
            "orderable": false
        }],

        language: {
            "url": "//cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json"
        },
    });

    var filteredData = table.columns( [3] ).data().flatten().filter( function ( value, index ) {
        return name = 20 ? true : false;
    } );

    function getParameterByName(name) {
      name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
      var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
      results = regex.exec(location.search);
      return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
    var prodId = getParameterByName('q');
    console.log(prodId);

    var filteredData = table
    .columns( [2] )
    .data()
    .flatten()
    .filter( function ( value, index ) {
        return name = prodId;
    } );
</script>
@endpush
