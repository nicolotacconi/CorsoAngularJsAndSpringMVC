<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="Controller3_Comunicanti.js"></script>
<title>BasicController</title>
</head>
<body ng-app="corsoBaseAngular">

	<!-- I DUE CONTROLLER HANNO SCOPE PROPRIO. SONO DUE ISTANZE DIVERSE -->
	<div ng-controller="Login3Ctrl as ctrl"
		ng-show="!ctrl.userService.logged">
		<h2>{{ctrl.userService.title}}</h2>
		<input type="text" ng-model="ctrl.userService.name"
			placeholder="Write your name and click login" class="form-control" />
		<button ng-click="ctrl.login();" class="btn"
			ng-disabled="!ctrl.userService.name">Login</button>
	</div>

	<!-- HO IL CONTROLLER DI WELCOME -->
	<div ng-controller="Welcome3Ctrl as ctrl"
		ng-show="ctrl.userService.logged" class="alert alert-success"
		ng-click="ctrl.reset()">
		<h2>{{ctrl.userService.title}}</h2>
		<h4>Welcome {{ctrl.userService.name}} -
			{{ctrl.userService.email}}</h4>
		<strong> CLICK ME TO CLOSE</strong>
	</div>

</body>
</html>