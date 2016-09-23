<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />

<script type="text/javascript" src="CostruttoHttpController.js"></script>
<script type="text/javascript" src="CostruttoHttpService.js"></script>


<title>Esempio costrutto http</title>
</head>
<body ng-app="corsoBaseAngular">
	<br>
	<div ng-controller="CostruttoHttpController">
		<h1>Ricerca Film Star Wars</h1>
		<h3>Inserisci stagione del film</h3>
		<input type="text" ng-model="numeroFilm">
		<button ng-click="ricerca()">Ricerca</button>

		<div ng-show="ricercaEseguita">

			<output>Titolo: {{risultatoRicerca.title}}</output>
			<br>
			<br>
			<output>Data: {{risultatoRicerca.release_date}}</output>
			<br>
			<br>
			<output>{{risultatoRicerca.opening_crawl}}</output>
			
			<br>
			<br>
			<output>{{messaggioErrore}}</output>


		</div>

	</div>

</body>
</html>