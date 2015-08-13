<div>

	<h1 class="titoloPaginaHome" id="index">P.M. INFORMATICA - Qualità
		e affidabilità al vostro servizio</h1>
	<br>
	<div class="div-table">
		<div class="div-row">

			<div class="col-md-6"
				style="padding-top: 3%; vertical-align: middle;">

				<b>P.M. INFORMATICA</b> è una piccola azienda fondata nel 2014 da un
				giovane imprenditore Pietro Mondia. Offre prodotti di ottima
				qualità, dispone sia di negozio cash per offrirvi servizi immediati
				come assistenza e supporto tecnico sia di piattaforma e-commerce per
				far arrivare direttamente i nostri prodotti nella vostra azienda o
				abitazione.<br> <br>

				<div class="div-row">
					<div class="col-md-1">
						<img alt="Sito e-commerce" src="../../resources/images/Spunta.jpg">
					</div>
					<div class="col-md-10">
						<b>Tempestività, puntualità.</b>
					</div>
				</div>
				<div class="div-row">
					<div class="col-md-1">
						<img alt="Sito e-commerce" src="../../resources/images/Spunta.jpg">
					</div>
					<div class="col-md-10">
						<b>Personale specializzato.</b>
					</div>
				</div>
				<div class="div-row">
					<div class="col-md-1">
						<img alt="Sito e-commerce" src="../../resources/images/Spunta.jpg">
					</div>
					<div class="col-md-10">
						<b>Tecnologie all'avanguardia.</b>
					</div>
				</div>
				<div class="div-row">
					<div class="col-md-1">
						<img alt="Sito e-commerce" src="../../resources/images/Spunta.jpg">
					</div>
					<div class="col-md-10">
						<b>Ampia gamma di servizi nazionali.</b>
					</div>

				</div>
				<br>
				<div class="div-row">
					<div class="col-md-11" style="text-align: center;">
						<a href="#/prenotazione"><button
								class="richiedi-appuntamento-button">Richiedi un
								appuntamento</button></a>
					</div>
				</div>

			</div>
			<div class="col-md-5" ng-if="!isMobileDevice">
				<div ng-controller="HomeController" style="width: 100%;">
					<carousel interval="myInterval"> <slide
						ng-repeat="slide in servizi" active="slide.active"> <img
						ng-src="{{slide.path}}" style="margin: auto; height: 100%;"></slide></carousel>
				</div>

			</div>
		</div>
		<hr>
		<div class="div-row" ng-if="!isMobileDevice">
			<div class="col-md-5">

				<h3 class="titoloPagina" id="indexServizi">I nostri ultimi
					lavori</h3>
				<div ng-controller="GalleriaController" style="width: 280x;">
					<carousel interval="myInterval"> <slide
						ng-repeat="slide in slides" active="slide.active"> <img
						ng-src="{{slide.path}}" style="margin: auto; height: 280px;"></slide></carousel>
				</div>

			</div>
		</div>
	</div>