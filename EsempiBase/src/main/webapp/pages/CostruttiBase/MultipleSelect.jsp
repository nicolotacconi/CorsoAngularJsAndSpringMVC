<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Costrutti Base</title>
<link
	href="${pageContext.request.contextPath}/resources/css/MultipleSelect.css"
	rel="stylesheet">
</head>

<body ng-app="intranetAngular" ng-controller="MultiSelectController">
	<jsp:include page="../templates/header.jsp" />
	<b>MULTIPLE SELECT</b>

	<form>
		<ul ng-init="getUffici()">
			<li ng-repeat="ufficio in uffici" ng-click="toggleActive(ufficio)"
				ng-class="{active:ufficio.active}">{{ufficio.nome}}</li>
		</ul>
	</form>
	
	
	<output>{{stringaUfficiSelected()}}</output>
</body>
</html>