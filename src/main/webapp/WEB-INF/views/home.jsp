<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/sitecx/paso1/paso1.js"></script>

<div class="container">

		<div class="alert alert-danger validation-alert" id="messages-alert" style="display:none">
			<button class="close message-close">&times;</button>
			<span class="glyphicon glyphicon-exclamation-sign"></span>
			<span class="message-content"></span>
		</div>
		
		<div class="panel panel-default" >
			
			<!-- <div class="panel-heading">Ingreso de Datos</div> -->
			<div class="panel-body" >
			
				<form class="form-horizontal "  role="form">
					
					<div class="form-group has-feedback">
						
						<div class="col-md-2">
							<label for="txtNombre" class="control-label">Nombres:</label>
						</div>
					
						<div class="col-md-2">
							<input type="text" class="form-control" id="txtNombre"
								name="txtNombre" class="login-username" placeholder="" />
						</div>	
					</div>
					
					<div class="form-group has-feedback">
						
						<div class="col-md-2">
							<label for="txtNombre" class="control-label">Apellidos:</label>
						</div>
					
						<div class="col-md-2">
							<input type="text" class="form-control" id="txtNombre"
								name="txtNombre" class="login-username" placeholder="" />
						</div>	
					
					</div>
					
					<br>
					
					<div class="form-group">
					
	                    <div class="col-md-offset-6 col-md-2">
	                    	 <input type="button" class="btn btn-toat2" id="btnEmpezar" value="Empezar"/>
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