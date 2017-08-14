<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/sitecx/paso3/paso3.js"></script>
  
<div class="container">

		<div class="alert alert-danger validation-alert" id="messages-alert" style="display:none">
			<button class="close message-close">&times;</button>
			<span class="glyphicon glyphicon-exclamation-sign"></span>
			<span class="message-content"></span>
		</div>

		<div class="panel panel-default" >
			
			<div class="panel-body" >

				<form class="form-horizontal "  role="form">
				
					<div class="form-group" id="pnl-datos" >
						<div class="col-md-6">
							
							
								<div class="form-group ">
									<div class="col-md-2">
										<label for="txtLatitud" class="control-label">Dato 1:</label>
									</div>
								
									<div class="col-md-3">
										<input type="text" class="form-control" id="txtLatitud"
											name="txtLatitud" class="login-username" placeholder="Latitud" />
									</div>	
								</div>
								
								<div class="form-group ">
									<div class="col-md-2">
										<label for="txtLongitud" class="control-label">Dato 2:</label>
									</div>
								
									<div class="col-md-3">
										<input type="text" class="form-control" id="txtLongitud"
											name="txtLongitud" class="login-username" placeholder="Longitud" />
									</div>	
								
								</div>
								
								
								
								<div class="form-group ">
								
									<div class="col-md-2">
										<label for="cmbTipoDocumento" class="control-label">Edad:</label>
									</div>
								
								    <div class="col-md-7">
									    <select class="form-control" id="cmbTipoDocumento" required data-validable="true">
									      <option selected="selected" value="1">--Selec.Tipo Documento-- </option>
										  <c:forEach var="documentoItem" items="${tiposDocumentos}"  >
									  	  		<option value="${documentoItem.idParametroItem}" ${documentoItem.idParametroItem eq '1' ? 'selected' : ''}><c:out value="${documentoItem.descParametroItem}"></c:out></option>
										  </c:forEach>
										</select>
										<div class="help-block with-errors"></div>
									</div>
								</div>
								
						</div>
					
						<div class="col-md-6">
							<div id="map" class="form-group">
		                	</div>
		                </div>
	                </div>
	                
	                <div class="form-group">
						
		                    <div class="col-md-offset-6 col-md-2">
		                    	 <input type="button" class="btn btn-toat2" id="btnRegresar" value="Regresar"/>
		                    </div>
		                    
		                    <div class="col-md-2">
		                    	 <input type="button" class="btn btn-toat2" id="btnSiguiente" value="Siguiente"/>
		                    </div>
		                    
		                    <div class="col-md-2">
		                    	  <input type="button" class="btn btn-toat2" id="btnCancelar" value="Cancelar"/>
		                    </div> 
		             </div>
	             </form>
	       </div>
	    </div>         
                
</div>