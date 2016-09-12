<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="DataBindingController.js"></script>
<title>DataBinding</title>
</head>
<body ng-app="corsoBaseAngular" >

	<div ng-controller="DataBindingController">
	
			modo 1: {{variabileProva}}
			<br>
			modo 2: <p ng-bind="variabileProva"></p>
	</div>

</body>
</html>