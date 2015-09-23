<html>
<head>
<title>Hello World</title>
</head>

<body ng-app="ionicAngular">
	<jsp:include page="../templates/header.jsp" />

	<ion-header-bar class="bar bar-header">

	<button class="button icon ion-navicon"></button>
	<h1 class="title">Pulsanti in Header</h1>
	<button class="button">Modifica</button>

	</ion-header-bar>


	<ion-content>


	<button class="button button-light">Pulsante semplice</button>
	<br>

	<button class="button button-block button-positive">Pulsante a
		tutta pagina con margine</button>
	<br>

	<button class="button button-full button-positive">Pulsante a
		tutta pagina senza margine</button>
	<br>

	<button class="button">
		<i class="icon ion-loading-c"></i> Loading...
	</button>
	<br>

	<button class="button icon-left ion-home">Home</button>
	<br>

	<button class="button icon-left ion-star button-positive">Preferiti</button>
	<br>

	<a class="button icon-right ion-chevron-right button-calm">Dettagli</a>
	<br>

	<a class="button icon-left ion-chevron-left button-clear button-dark">Indietro</a>
	<br>

	<button class="button icon ion-gear-a"></button>
	<br>

	<a class="button button-icon icon ion-settings"></a> <br> <a
		class="button button-outline icon-right ion-navicon button-balanced">Menu</a>
	<br>

	<div class="button-bar">
		<a class="button">Primo</a> <a class="button">Secondo</a> <a
			class="button">Terzo</a>
	</div>
	<br>

	</ion-content>
</body>
</html>