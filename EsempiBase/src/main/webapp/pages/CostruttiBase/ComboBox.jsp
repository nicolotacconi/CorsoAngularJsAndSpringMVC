<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Costrutti Base</title>
</head>

<body ng-app="intranetAngular" ng-controller="CostruttiBaseController">
	<jsp:include page="../templates/header.jsp" />
	<b>COMBOBOX</b>

	<div ng-init="getUffici()">
		<select ng-model="selectedUfficio"
			ng-options="ufficio as ufficio.nome for ufficio in uffici"></select>
		<div>
			NOME: {{selectedUfficio.nome}} <br> PIANO: {{selectedUfficio.piano}} <br>
			AREA: {{selectedUfficio.area}} <br> <br>
		</div>
	</div>

</body>
</html>