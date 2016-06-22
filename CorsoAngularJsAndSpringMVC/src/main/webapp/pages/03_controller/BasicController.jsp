<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="BasicController.js"></script>
<title>BasicController</title>
</head>
<body ng-app="corsoBaseAngular" >

  <!-- I DUE CONTROLLER HANNO SCOPE PROPRIO. SONO DUE ISTANZE DIVERSE -->
	  <div ng-controller="MyCtrl">
	      <h2>{{saluto}}</h2>
	      <h3>{{counter+1}}</h3>
	  </div>
	  <div ng-controller="MyCtrl">
	      <h2>{{saluto}}</h2>
	      <h3>{{counter+5}}</h3>
	  </div>

</body>
</html>