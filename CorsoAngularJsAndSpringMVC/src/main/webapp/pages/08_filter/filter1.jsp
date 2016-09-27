<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="Filter1.js"></script>
<title>Filtri e Formatter</title>
<style>
table, th, td {
	border: 1px solid grey;
	border-collapse: collapse;
	padding: 5px;
}

table tr:nth-child(odd) {
	background-color: #f1f1f1;
}

table tr:nth-child(even) {
	background-color: #ffffff;
}
</style>
</head>
<body ng-app="corsoBaseAngular">

	<!-- I DUE CONTROLLER HANNO SCOPE PROPRIO. SONO DUE ISTANZE DIVERSE -->
	<div ng-controller="Filter1Ctrl">
		<h2>{{title}}</h2>

		<form>
			<h4>Selezionare un ordinamento:</h4>
			<input type="radio" ng-model="varOrdine" value="name">Nome <input
				type="radio" ng-model="varOrdine" value="city">Città <input
				type="radio" ng-model="varOrdine" value="age">Età <input
				type="radio" ng-model="varOrdine" value="salary">Stipendio
		</form>
		<p>
			<h4>Digita stringa da ricercare in tabella:</h4>
			<input type="text" ng-model="varRuolo">
		</p>
		<br />
		<table>
			<tr>
				<th>Nome</th>
				<th>Città</th>
				<th>Età</th>
				<th>Ruolo</th>
				<th>Salario</th>
			</tr>
			<tr ng-repeat="x in users | filter : varRuolo | orderBy: varOrdine">
				<td>{{ x.name }}</td>
				<td>{{ x.city}}</td>
				<td>{{ x.age}}</td>
				<td>{{ x.role | uppercase }}</td>
				<td>{{ x.salary | currency:"&euro;":1}}</td>
			</tr>
		</table>
	</div>

	<br>

</body>
</html>