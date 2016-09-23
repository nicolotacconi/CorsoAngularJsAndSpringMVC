<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="EsempioIntegrazioneMvcController.js"></script>
<script type="text/javascript" src="EsempioIntegrazioneMvcService.js"></script>
<title>Integrazione con Spring MVC</title>
</head>
<body ng-app="corsoBaseAngular">
	<br>
	<div ng-controller="EsempioIntegrazioneMvcController">
		<h1>Ricerca</h1>
		<input type="text" ng-model="autore" required></input>

		<button ng-click="ricerca()">Ricerca</button>

		<ul>
			<li ng-repeat="risultato in risultatiRicerca">{{risultato.titolo}}
				- {{risultato.autore}}</li>
		</ul>
		
		<br><br><br>
		<h1>Aggiungi</h1>
		<input type="text" ng-model="libroNew.titolo" placeholder="titolo" required></input>
		<input type="text" ng-model="libroNew.autore" placeholder="autore" required></input>
		
		<button ng-click="aggiungi()">Aggiungi</button>
	</div>

</body>
</html>