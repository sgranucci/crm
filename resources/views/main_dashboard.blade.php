@extends('crudbooster::admin_template')
<title>Tablero</title>

@section('content')
<div class="statistic-row row">
    <div id="area1" class="col-sm-2 connectedSortable" style="">
    	<div id="f05ccb8d232278f3b898bf8aa772be1d" class="border-box">
			<div class="small-box bg-red animated  flipInX delay-500ms	">
			    <div class="inner inner-box">
			      <h3>{{$leads}}	</h3>
			      <p>LEADS	</p>
			    </div>
			    <div class="icon" style="padding-top:15px">
			      <i class="ion ion-android-contact	"></i>
			    </div>
			    <a href="{{CRUDBooster::adminPath()}}/leads" class="small-box-footer">Ir a Leads <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
	</div>
  <div id="area2" class="col-sm-2 connectedSortable" style="">
    <div id="cfe4bfc3187479097c0b5e475140cfc0" class="border-box">
			<div class="small-box bg-yellow	animated  flipInX delay-1s">
			    <div class="inner inner-box">
			      <h3>{{$contaf}}	</h3>
			      <p>CONT. FACILITADOR	</p>
			    </div>
			    <div class="icon" style="padding-top:15px">
			      <i class="ion ion-android-contacts	"></i>
			    </div>
			    <a href="{{CRUDBooster::adminPath()}}/contactoFacilitador" class="small-box-footer">Ir a Cont Facilitador <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
	</div>
  <div id="area21" class="col-sm-2 connectedSortable" style="">
    <div id="cfe4bfc3187479097c0b5e475140cfc0" class="border-box">
			<div class="small-box bg-yellow	animated  flipInX delay-1s">
			    <div class="inner inner-box">
			      <h3>{{$contaa}}	</h3>
			      <p>CONT. ASESORES	</p>
			    </div>
			    <div class="icon" style="padding-top:15px">
			      <i class="ion ion-android-contacts	"></i>
			    </div>
			    <a href="{{CRUDBooster::adminPath()}}/contacto" class="small-box-footer">Ir a Cont. Asesor <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
	</div>
  <div id="area3" class="col-sm-2 connectedSortable" style="">
    <div id="c5b53f1f3c6b8f8b6483b95055e41a3c" class="border-box">
			<div class="small-box bg-green	animated  flipInX delay-1500ms">
			    <div class="inner inner-box">
			      <h3>{{$prospf}}	</h3>
			      <p>PROSP. FACILITADOR	</p>
			    </div>
			    <div class="icon" style="padding-top:15px">
			      <i class="ion ion-android-checkmark-circle	"></i>
			    </div>
			    <a href="{{CRUDBooster::adminPath()}}/prospectFacilitador" class="small-box-footer">Ir a Prosp. Facilitador <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
	</div>
  <div id="area31" class="col-sm-2 connectedSortable" style="">
    <div id="c5b53f1f3c6b8f8b6483b95055e41a3c" class="border-box">
			<div class="small-box bg-green	animated  flipInX delay-1500ms">
			    <div class="inner inner-box">
			      <h3>{{$prospa}}	</h3>
			      <p>PROSP. ASESORES	</p>
			    </div>
			    <div class="icon" style="padding-top:15px">
			      <i class="ion ion-android-checkmark-circle	"></i>
			    </div>
			    <a href="{{CRUDBooster::adminPath()}}/prospect" class="small-box-footer">Ir a Prosp. Asesor <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
	</div>
	@php
		if (CRUDBooster::myPrivilegeId()!=3){
	@endphp
		<div id="area5" class="col-sm-2 connectedSortable" style="">
	    	<div id="a63dccb67s02rcbbb5b379fb000bd080" class="border-box">
				<div class="small-box bg-gray animated  flipInX delay-2s	">
				    <div class="inner inner-box">
				      <h3>{{$clien}}	</h3>
				      <p>CLIENTES	</p>
				    </div>
				    <div class="icon" style="padding-top:15px">
				      <i class="ion ion-android-happy	"></i>
				    </div>
				    <a href="{{CRUDBooster::adminPath()}}/clientes" class="small-box-footer">Ir a Clientes <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
		</div>
	@php
		}
	@endphp
	    <div id="area4" class="col-sm-2 connectedSortable" style="">
	    	<div id="a63dccb675029cbbb5b379fb000bd080" class="border-box">
				<div class="small-box bg-aqua animated  flipInX delay-2s	">
				    <div class="inner inner-box">
				      <h3>{{$histo}}	</h3>
				      <p>HISTORICO	</p>
				    </div>
				    <div class="icon" style="padding-top:15px">
				      <i class="ion ion-android-done-all	"></i>
				    </div>
				    <a href="{{CRUDBooster::adminPath()}}/historicos" class="small-box-footer">Ir a Historicos <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
		</div>

	<div id="area6" class="col-sm-2 connectedSortable" style="">
    	<div id="a63dccb6565rcbbb5b379fb000bd080" class="border-box">
			<div class="small-box bg-purple animated  flipInX delay-2s	">
			    <div class="inner inner-box">
			      <h3>{{$agend}}	</h3>
			      <p>AGENDA	</p>
			    </div>
			    <div class="icon" style="padding-top:15px">
			      <i class="ion ion-android-calendar	"></i>
			    </div>
			     <a href="{{CRUDBooster::adminPath()}}/agendas" class="small-box-footer">Ir a Agenda <i class="fa fa-arrow-circle-right"></i></a>
			</div>
		</div>
	</div>
</div>
	<div class="box box-info">
        <div class="box-header with-border">
          <h3 class="box-title">Buscador</h3>
        </div>
        <div class="box-body">

          <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-search"></i></span>
            <input type="text" id='bus' class="form-control" placeholder="Busca x NOMBRE, EMAIL, TELEFONO, PRODUCTO, CONTACTADO POR y SITUACION...">
          </div>
          <br>



        </div>
        <!-- /.box-body -->
    </div>
    <div class="box box-success">
        <div class="box-header with-border">
          <h3 class="box-title">Resultado</h3>
        </div>
        <div class="box-body">

          <div id="table_result">

          </div>
          <br>



        </div>
        <!-- /.box-body -->
    </div>
@endsection
@push('scripts')
	<script src="{{asset ('js/funciones.js') }}"></script>
@endpush
