<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Costrutti Base</title>
</head>

<body ng-app="intranetAngular" ng-controller="CostruttiBaseController">
	<jsp:include page="../templates/header.jsp" />
	<h2>Hello World!</h2>

	<b>Esempio Lista di elementi</b>
	<div ng-init="getUffici()">
		<li ng-repeat="ufficio in uffici">NOME: {{ufficio.nome}} <br>
			PIANO: {{ufficio.piano}} <br> AREA: {{ufficio.area}} <br> <br>

		</li>

	</div>

	<b>Esempio Lista di elementi filtrata</b>
	<br>
	<br>
	<div>
		<input type="text" ng-model="ufficioDaRicercare"
			placeholder="Cerca Ufficio..." />
	</div>

	<div>
		<li ng-repeat="ufficio in uffici | filter:ufficioDaRicercare">NOME:
			{{ufficio.nome}} <br> PIANO: {{ufficio.piano}} <br> AREA:
			{{ufficio.area}} <br> <br>

		</li>

	</div>

	<b>COMBOBOX</b>

	<div>
		<select ng-model="selectedUfficio"
			ng-options="ufficio as ufficio.nome for ufficio in uffici"></select>
		<div>
			NOME: {{selectedUfficio.nome}} <br> PIANO: {{selectedUfficio.piano}} <br>
			AREA: {{selectedUfficio.area}} <br> <br>
		</div>
	</div>

</body>
</html>