<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Costrutti Base</title>
</head>

<body ng-app="intranetAngular" ng-controller="CostruttiBaseController">
	<jsp:include page="../templates/header.jsp" />
	<h2>Hello World!</h2>

	<div>
		<button class="btn" type="button"
			ng-click="esempioDaVisualizzare = 'listaSemplice'">Lista
			Semplice</button>

		<button class="btn" type="button"
			ng-click="esempioDaVisualizzare = 'listaFiltrata'">Lista
			Filtrata</button>

		<button class="btn" type="button"
			ng-click="esempioDaVisualizzare = 'listaOrdinata'">Lista
			Ordinata</button>

	</div>

	<div ng-hide="esempioDaVisualizzare != 'listaSemplice'">
		<b>Esempio Lista di elementi</b>
		<div ng-init="getUffici()">
			<li ng-repeat="ufficio in uffici">NOME: {{ufficio.nome}} <br>
				PIANO: {{ufficio.piano}} <br> AREA: {{ufficio.area}} <br>
				<br>

			</li>

		</div>

	</div>
	<div ng-hide="esempioDaVisualizzare != 'listaFiltrata'">
		<b>Esempio Lista di elementi filtrata</b> <br> <br>
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
	</div>
	<div ng-hide="esempioDaVisualizzare != 'listaOrdinata'">
		<b>Esempio Lista di elementi ordinata</b> <br> <br>

		<div>
			<li ng-repeat="ufficio in uffici | orderBy:'nome'">NOME:
				{{ufficio.nome}} <br> PIANO: {{ufficio.piano}} <br> AREA:
				{{ufficio.area}} <br> <br>

			</li>

		</div>
	</div>
</body>
</html>