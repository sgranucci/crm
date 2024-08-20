
function regresar(){
	window.history.back(-1)
}

function alerta(){
	swal({title: "Alerta",   
		  text: "Envia a Historico?",   
		  type: "warning",   
		  showCancelButton: true,   
		  confirmButtonColor: "#ff0000",   
		  confirmButtonText: trans('crudbooster.confirmation_yes'),  
		  cancelButtonText: trans('crudbooster.confirmation_no'),  
		  closeOnConfirm: false 
		  });
}

$(buscador());

function buscador(consulta){
	
	$.ajax({
		headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
		url: 'busqueda',
		type: 'POST',
		dataType: 'html',
		data: {consulta: consulta}
	})
	.done(function(respuesta){
		
		$("#table_result").html(respuesta);
	})
	.fail(function(){
		console.log("error");
	})
}

$(document).on('keyup','#bus',function(){
	var valor = $(this).val();
	
	if (valor != ""){
		buscador(valor);
	}else{
		buscador();
	}

});

