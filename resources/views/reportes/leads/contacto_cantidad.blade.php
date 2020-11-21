@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
    

    @if( !isset($contactos))
    
    <div class='panel panel-default'>
        <div class='panel-body'>
            <h4>{{ $page_title }}</h4>
    		@include('reportes.leads.partials.form_contacto_cantidad')
            
    	</div>
	</div>
    
    @else
      
        <div class="nav">
            @include('reportes.leads.partials.form_contacto_cantidad_hide')
        </div>

        <div class="row">
             <div class="col-md-12">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h5> <b>Periodo desde | {{ $desde }} | al | {{ $hasta }} | </b> </h5>
                    </div>
                    <div class="panel-body">
                        <table id='registro' class='table  table-condensed'>
                            <thead>
                                <th>Fecha</th>
                                <th>Producto </th>
                                <th>Canal </th>
                                <th>Total </th>
                            </thead>
                            <tbody>
                            
                            @php 
                                $total = 0 
                            @endphp

                            @foreach($contactos as $a)
                                <tr>
                                    <td>{{$a->fecha}}</td>
                                    <td>{{$a->producto}}</td>
                                    <td>{{$a->canal}}</td>
                                    <td>{{$a->total}}</td>
                                </tr>
                                @php
                                    $total  = $total + $a->total
                                @endphp
                            @endforeach    
                                
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td><b><h4>Total:</h4></b></td>
                                    <td><b><h4>{{$total}}</h4></b></td>
                                    
                                </tr>
                            </tbody>
                        </table>      
                    </div>
                </div>
            </div>
        </div>
    @endif

@push('scripts')
    <script>
    	$('#dp1').datepicker({
        	autoclose: true
    	})
        $('#dp2').datepicker({
            autoclose: true
        })
    	$('.select2').select2()


    </script>
@endpush


@endsection

