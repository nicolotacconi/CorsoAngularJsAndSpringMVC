<html>
<head>
<title>Hello World</title>
</head>

<body ng-app="ionicAngular">
	<jsp:include page="../templates/header.jsp" />

	<ion-header-bar class="bar bar-header">


	<h1 class="title">Lista di Item</h1>


	</ion-header-bar>


	<ion-content>

	<ul class="list">
		<li class="item">Primo Item</li>
		<li class="item">Secondo Item</li>
		<li class="item">Terzo Item</li>
		<li class="item">Quarto Item</li>
	</ul>

	<div class="list">

		<div class="item item-divider">Azioni Da Fare</div>

		<a class="item item-icon-left" href="#"> <i class="icon ion-email"></i>
			Invia mail
		</a> <a class="item item-icon-left item-icon-right" href="#"> <i
			class="icon ion-chatbubble-working"></i> Chiamami <i
			class="icon ion-ios-telephone-outline"></i>
		</a>


		<div class="item item-divider">Persone</div>

		<a class="item item-avatar" href="#"> <img src="venkman.jpg">
			<h2>Mio</h2>
			<p>Mio Telefono Cellulare</p>
		</a>

	</div>

	</ion-content>
</body>
</html>