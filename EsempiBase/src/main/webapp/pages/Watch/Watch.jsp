<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Esempio Watch</title>
</head>

<body ng-app="intranetAngular">
	<jsp:include page="../templates/header.jsp" />
	<h2>Esempio Watch</h2>


	<table ng-controller="WatchController">
		<tr>

			<td><input id="utente" ng-model="utente" /></td>
		</tr>
		<tr>
			<td><button class="btn" type="button" ng-click="saluta()">Set
					Saluta Utente</button></td>
		</tr>
	</table>

</body>
</html>