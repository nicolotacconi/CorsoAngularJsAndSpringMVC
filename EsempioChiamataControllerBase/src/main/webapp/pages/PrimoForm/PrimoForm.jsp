<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>MyFirstWebApplication</title>
</head>

<body ng-app="intranetAngular" ng-controller="PrimoFormController">
	<jsp:include page="../templates/header.jsp" />
	<h2>Hello World!</h2>

	<table>

		<tr>
			<td><label>Nome:</label></td>
			<td><input id="nome" type="text" ng-model="utente.nome" /></td>
		</tr>

		<tr>
			<td><label>Cognome:</label></td>
			<td><input id="cognome" type="text" ng-model="utente.cognome" /></td>
		</tr>

		<tr>
			<td><label>Eta':</label></td>
			<td><input id="eta" type="text" ng-model="utente.eta" /></td>
		</tr>
	</table>

	<button class="btn" type="button" ng-click="registraUtente()">
		Registrati</button>

	{{messaggioDiConferma}}
</body>
</html>