<!-- First, extends to the CRUDBooster Layout -->

@extends('crudbooster::admin_template')
@section('content')
<p><a href="javascript:regresar();">
        <i class="fa fa-chevron-circle-left"></i>
        &nbsp; Volver atras</a>
</p>
<div class='box box-default'>
    <div class='box-heading'> </div>
    {!! Form::open (['url' => CRUDBooster::mainpath('add-save')]) !!}
    <div class='box-body'>
        <div class="row">
            <div class="col col-md-3">
                <div class='form-group'>

                    <div class="box box-widget widget-user-2">
                        <div class="widget-user-header {{ $color }}">
                            <h3 class="widget-user-username">{{ $name }} </h3>
                            <h5 class="widget-user-desc">{{ $estado }}</h5>
                        </div>
                    </div>
                    <div class="box-footer no-padding">
                        <ul class="nav nav-stacked">
                            <li><a href="#">Producto <span class="pull-right badge bg-blue">{{$producto }}</span></a></li>
                            <li><a href="#">Canal de Incio<span class="pull-right badge bg-aqua">{{ $canal }}</span></a></li>
                            <li><a href="#">Situción actual<span class="pull-right badge bg-green">{{ $situacion }}</span></a></li>
                            <li><a href="#">Telefono<span class="pull-right badge bg-red">{{ $tel_full }}</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col col-md-6">
                <input type='hidden' name='lead_id' value="{{$lead_id}}">
                <input type='hidden' name='canal_id' value="{{$canal_id}}">
                <input type='hidden' name='product_id' value="{{$product_id}}">
                <input type="hidden" name="status_id" value="{{$status_id}}" id='js_status_id'>
                <div class='form-group'>
                    <label>Detalle</label>
                    <textarea class='form-control' name='detalle' required id='detalle'></textarea>
                </div>
                <div class='form-group form-inline'>
                    <div class='form-group'>
                        <label>Prefijo:</label>
                        <input type="text" class="form-control" name="prefijo" value='{{$prefijo}}'>
                    </div>
                    <div class='form-group'>
                        <label>Telefono:</label>
                        @if ( $telefono == "")
                        @php
                        $telefono = $tel_full;
                        @endphp
                        <input type="text" class="form-control" name="telefono" value='{{ $telefono }}'>
                        @else
                        <input type="text" class="form-control" name="telefono" value='{{ $telefono }}'>
                        @endif
                    </div>
                </div>
                <div class='form-group'>
                    {!! Form::label ('situacion_id', 'Situacion:' ) !!}
                    {!! Form::select ('situacion_id', $situaciones, null, ['class'=> 'form-control select2' , 'id' => 'situacion_id'])!!}
                </div>
                <div class='form-group'>
                    {!! Form::label ('proxima_accion', 'Acción a realizar:' ) !!}
                    @if ($status_id == 6)
                    {!! Form::select ('proxima_accion', $acciones, 20, ['class'=> 'form-control' , 'id' => 'proxima_accion', 'required' => 'true', 'onchange' => "getval(this);" ])!!}
                    @else
                    {!! Form::select ('proxima_accion', $acciones, null, ['class'=> 'form-control' , 'id' => 'proxima_accion', 'required' => 'true', 'onchange' => "getval(this);", 'placeholder' => 'Ingrese Proxima Acción'])!!}
                    @endif
                </div>
                <div class='form-group'>
                    <label>Proximo Estado</label>
                    @if ($status_id == 6)
                    <span class="badge bg-blue">
                        <h5>
                            <div id="proximoEstado">Cliente</div>
                        </h5>
                    </span>
                    @else
                    <span class="badge bg-blue">
                        <h5>
                            <div id="proximoEstado"></div>
                        </h5>
                    </span>
                    @endif
                </div>
            </div>
            <div class="col col-md-3">
                <div class='form-group'>
                    {!! Form::label ('test', 'Agendar?:' ) !!}
                    {!! Form::checkbox('agenda', 'value' , false, ['class' => 'checkbox', 'id' => 'agenda']) !!}
                </div>
                <div class='form-group'>
                    {!! Form::label ('fecha_ag', 'Fecha:' ) !!}
                    {!! Form::date('fecha_ag', \Carbon\Carbon::now(),['class'=> 'form-control ag' , 'id' => 'fecha'] ) !!}
                </div>
                <div class='form-group'>
                    {!! Form::label ('hora_ag', 'Hora:' ) !!}
                    {!! Form::time('hora_ag', '12:00', ['class'=> 'form-control ag' , 'id' => 'hora' ]) !!}
                </div>
            </div>
            <div class="col col-md-3">
              <div class="row">
              <div class="col-md-6">
                <div class='form-group'>
                    {!! Form::label ('reunion', 'En oficina?:' ) !!}
                    {!! Form::checkbox('reunion', 'value' , false, ['class' => 'checkbox', 'id' => 'agendaR']) !!}
                </div>
              </div>
              <div class="col-md-6">
                <div class='form-group'>
                  {!! Form::label ('reunionDom', 'A domicilio?:' ) !!}
                  {!! Form::checkbox('reunionDom', 'value' , false, ['class' => 'checkbox', 'id' => 'reunionDom']) !!}
                </div>
              </div>
            </div>



                <div class='form-group'>
                    {!! Form::label ('fecha_re', 'Fecha:' ) !!}
                    {!! Form::date('fecha_re', \Carbon\Carbon::now(),['class'=> 'form-control ag' , 'id' => 'fechaR'] ) !!}
                </div>
                <div class='form-group'>
                    {!! Form::label ('hora_re', 'Hora:' ) !!}
                    {!! Form::time('hora_re', '12:00', ['class'=> 'form-control ag' , 'id' => 'horaR' ]) !!}
                </div>

                <div class='form-group'>
                  {!! Form::label ('domicilio', 'Domicilio?:' ) !!}
                  {!! Form::text('domicilio', false, ['id' => 'domicilio', 'class'=> 'form-control']) !!}
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class='form-group'>
                      {!! Form::label ('altura', 'Altura?:' ) !!}
                      {!! Form::text('altura', false, ['id' => 'altura', 'class'=> 'form-control']) !!}
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class='form-group'>
                      {!! Form::label ('cp', 'CP:' ) !!}
                      {!! Form::text('cp', false, ['id' => 'cp', 'class' => 'form-control']) !!}
                    </div>
                  </div>
                </div>
                    <div class='form-group'>
                      {!! Form::label ('localidad', 'Localidad:' ) !!}
                      {!! Form::text('localidad', false, ['id' => 'localidad', 'class'=> 'form-control' ]) !!}
                    </div>
            </div>
        </div>
    </div>
    <div class='box-footer'>
        <input type='submit' class='btn btn-success' value='Guardar' />
    </div>
    {!! Form::close() !!}
</div>
@endsection

@push('scripts')
<script>
    $(document).ready(function() {
        $("#detalle").focus();
    });

    function getval(sel) {
        var a = sel.value
        $.ajax({
            url: "prox_estado/" + a,
            success: function(r) {
                estado_id = r[0]['idst'];
                estado_name = r[0]['name'];
                console.log(r[0]['idst']);
                $("#proximoEstado").html(estado_name);
                $("#js_status_id").val(estado_id);
            }
        });
    }
</script>

@endpush
