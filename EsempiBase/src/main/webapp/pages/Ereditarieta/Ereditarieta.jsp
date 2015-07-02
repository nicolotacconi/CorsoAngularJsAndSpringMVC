<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>MyFirstWebApplication</title>
</head>

<body ng-app="intranetAngular" ng-controller="PageController">
	<jsp:include page="../templates/header.jsp" />
	<h2>Hello World!</h2>

	<table ng-controller="RicercaController">

		<tr>
			<td><label>Utente:</label></td>
			<td><input id="nome" type="text" ng-model="utente" /></td>
			<td><button class="btn" type="button"
					ng-click="ricercaPerUtente()">Ricerca</button></td>
		</tr>

	</table>

	<table ng-controller="RisultatiController">

		<tr ng-repeat="utente in risultati">
			<td><input type="checkbox" ng-model="utente.selected"></td>
			<td>{{utente.utente}} - {{utente.eta}}</td>
		</tr>
		<tr><td><button class="btn" type="button"
					ng-click="printSelected()">Stampa Risultati Selezionati</button></td></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr ng-repeat="risSelected in risultatiSelezionati">
			<td></td>
			<td>{{risSelected.utente}} - {{risSelected.eta}}</td>
		</tr>
	</table>

	<br>
	<br>

	<div>
	Esempo BROADCAST
	<br>
			<button class="btn" type="button"
					ng-click="lanciaBroadcast()">Lancia Broadcast</button>
	
	</div>

</body>
</html>