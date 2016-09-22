<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="Controller2_annidati.js"></script>

<style type="text/css">
.show-scope-demo.ng-scope, .show-scope-demo .ng-scope {
	border: 1px solid red;
	margin: 3px;
}

.mark {
	background-color: yellow;
	color: black;
}
</style>

<title>BasicController</title>
</head>
<body ng-app="corsoBaseAngular">


	<!-- I DUE CONTROLLER HANNO SCOPE PROPRIO. SONO DUE ISTANZE DIVERSE -->
	<div ng-controller="Login1Ctrl" class="show-scope-demo">
		<h3>separato</h3>
		<h3>{{title}}</h3>
		<p>{{location}}</p>
		<p>{{name}}</p>
		<p>altro: {{altro}}</p>
	</div>

	<br>

	<!-- HO IL CONTROLLER DI WELCOME -->
	<div ng-controller="Welcome1Ctrl" class="show-scope-demo">
		<h3>separato</h3>
		<h3>{{title}}</h3>
		<p>{{location}}</p>
		<p class="mark">{{name}}</p> <i>(esiste espressione per name, ma non si vede perché non nello scope di questo controller)</i>
		<p class="mark">altro: {{altro}}</p>
	</div>


	<!-- QUESTI CONTROLLER SONO ANNIDATI, 
		IL FIGLIO VEDE PERIò ANCHJE LO SCOPE DEL PADRE -->
	<div ng-controller="Login1Ctrl" class="show-scope-demo">
		<h3>padre</h3>
		<h3>{{title}}</h3>
		<p>{{location}}</p>
		<p>{{name}}</p>
		<p>altro: {{altro}}</p>
		<div ng-controller="Welcome1Ctrl" class="show-scope-demo">
			<h3>figlio</h3>
			<h3>{{title}}</h3>
			<p>{{location}}</p>
			<p class="mark">{{name}}</p>
			<p class="mark">altro: {{altro}}</p>
		</div>
	</div>




</body>
</html>