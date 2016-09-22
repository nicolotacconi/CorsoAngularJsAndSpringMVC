<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="Controller1_separati.js"></script>
<title>BasicController</title>
</head>
<body ng-app="corsoBaseAngular">

	<!-- I DUE CONTROLLER HANNO SCOPE PROPRIO. SONO DUE ISTANZE DIVERSE -->
	<div ng-controller="Login1Ctrl as ctrl">
		<h2>{{title}}</h2>
		<p>{{name}}</p>
		<p>altro: {{altro}}</p>
	</div>

	<br>

	<!-- HO IL CONTROLLER DI WELCOME -->
	<div ng-controller="Welcome1Ctrl as ctrl">
		<h2>{{title}}</h2>
		<p>{{location}}</p>
		<p>{{name}}</p>
		<p>altro: {{altro}}</p>
	</div>

</body>
</html>