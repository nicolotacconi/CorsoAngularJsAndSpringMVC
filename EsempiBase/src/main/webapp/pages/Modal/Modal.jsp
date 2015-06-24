<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Modal</title>
</head>

<body ng-app="intranetAngular" ng-controller="ModalController">
	<jsp:include page="../templates/header.jsp" />
	<h2>Hello World!</h2>

	<b>Lista di uffici</b>


	<table ng-init="getUffici()">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Area</th>
				<th>Piano</th>
			</tr>
		</thead>
		<tr ng-repeat="ufficio in uffici" ng-click="openModal(ufficio)">
			<td>{{ufficio.nome}}</td>
			<td>{{ufficio.area}}</td>
			<td>{{ufficio.piano}}</td>
		</tr>
	</table>

</body>
</html>