<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />  

<link type="text/css" href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
<link type="text/css" href="<%=request.getContextPath()%>/static/styles/toat_estilos.css" rel="stylesheet">

 
<script type="text/javascript" src="<%=request.getContextPath()%>/static/jquery/js_1.12.4/jquery.min.js"></script>
 
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="<%=request.getContextPath()%>/compatibility/selectivizr-min.js"></script>
<script src="<%=request.getContextPath()%>/compatibility/html5shiv.min.js"></script>
<script src="<%=request.getContextPath()%>/compatibility/respond.min.js"></script>
<![endif]-->

<title><tiles:getAsString name="title" /></title>

</head>
<body>
	<div class="spinner-wrapper">
  		<div class="spinner"></div>
	</div> 

	<div class="container" >
	    <tiles:insertAttribute name="header" />
	    <tiles:insertAttribute name="body" />
	    <tiles:insertAttribute name="footer" />
	</div>
</body>
</html>