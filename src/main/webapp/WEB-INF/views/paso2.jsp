<script type="text/javascript" src="<%=request.getContextPath()%>/static/sitecx/paso2/paso2.js"></script>

<style>
    #map {
/*         width:570px;
        height:480px;
 */
 
        width :550px;
        height:450px;
 

 
     }
</style>  
  
<div class="container">

		<div class="alert alert-danger validation-alert" id="messages-alert" style="display:none">
			<button class="close message-close">&times;</button>
			<span class="glyphicon glyphicon-exclamation-sign"></span>
			<span class="message-content"></span>
		</div>

		<div class="panel panel-default" >
			
			<div class="panel-body" >

				<form class="form-horizontal "  role="form">
				
					<div class="form-group" id="pnl-ubicacionGeografica" >
						<div class="col-md-6">
							
							
								<div class="form-group ">
									<div class="col-md-2">
										<label for="txtLatitud" class="control-label">Latitud:</label>
									</div>
								
									<div class="col-md-3">
										<input type="text" class="form-control" id="txtLatitud"
											name="txtLatitud" class="login-username" placeholder="Latitud" />
									</div>	
								</div>
								
								<div class="form-group ">
									<div class="col-md-2">
										<label for="txtLongitud" class="control-label">Longitud:</label>
									</div>
								
									<div class="col-md-3">
										<input type="text" class="form-control" id="txtLongitud"
											name="txtLongitud" class="login-username" placeholder="Longitud" />
									</div>	
								
								</div>
								
								
								
						</div>
					
						<div class="col-md-6">
						
							<div class="form-group">
								<div class="col-md-8">
	                    			<input type="text" id="pac-input" name="pac-input"
	                           				class="form-control col-md-12"
	                           			 />
                           		</div>	 
                			</div>  
                
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
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJ7UsI433cgj9qtYkIrienWqjTQjrgNW8&libraries=places"></script>