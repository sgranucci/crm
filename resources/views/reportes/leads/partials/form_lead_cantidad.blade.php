<div class="row">
	{!! Form::open(['route' => 'report_lead_cantidad'])  !!}
	{{ csrf_field() }}
	    <div class="col-xs-4">
			<div class="form-group">
				{{ Form::label('desde', 'Fecha desde:')}}
                <div class="input-group">
	                <div class="input-group-addon">
	                   <i class="fa fa-calendar"></i>
	                </div>
	                {{ Form::date('desde', null, ['class' => 'form-control pull-right' , 'placeholder' => 'Fecha desde...'])}}
                </div>
            </div>
        </div>
        <div class="col-xs-4">
			<div class="form-group">
				{{ Form::label('hasta', 'Fecha hasta:')}}
                <div class="input-group">
	                <div class="input-group-addon">
	                   <i class="fa fa-calendar"></i>
	                </div>
	                {{ Form::date('hasta', null, ['class' => 'form-control pull-right' , 'placeholder' => 'Fecha hasta...'])}}
                </div>
            </div>
        </div>
</div>
<div class="form-group">
  {{ Form::submit('Informe' , ['class' => 'btn btn-primary'])}}
</div>
{!! Form::close()  !!}