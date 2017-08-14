/**
 * 
 */

$(function() {

	$("#btnSiguiente").click(function() {
		irPasoSiguiente();
	});
	
	$("#btnRegresar").click(function() {
		irPasoAnterior();
	});
	
});	


function irPasoAnterior(){
	window.location.href = 'paso2.htm';
}

function irPasoSiguiente(){
	window.location.href = '#';
}