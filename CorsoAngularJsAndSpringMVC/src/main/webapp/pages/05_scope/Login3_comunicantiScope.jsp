<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="Controller3_ComunicantiScope.js"></script>
<title>BasicController</title>
</head>
<body ng-app="corsoBaseAngular">

	<!-- I DUE CONTROLLER HANNO SCOPE PROPRIO. SONO DUE ISTANZE DIVERSE -->
	<div ng-controller="Login3Ctrl" ng-show="!userService.logged">
		<h2>{{userService.title}}</h2>
		<input type="text" ng-model="userService.name" placeholder="Write your name "
			class="form-control" />
		<button ng-click="login()" class="btn" ng-disabled="!userService.name">Login</button>

	</div>

	<div ng-controller="Welcome3Ctrl" ng-show="userService.logged"
		class="alert alert-success" ng-click="reset()">
		<h2>{{userService.title}}</h2>
		<h4>Welcome {{userService.name}} - {{userService.email}}</h4>
		<strong> CLICK ME TO CLOSE</strong>
	</div>

	<!-- HO IL CONTROLLER DI WELCOME -->


</body>
</html>