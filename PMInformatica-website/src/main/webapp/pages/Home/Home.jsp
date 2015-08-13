<div>

	<h1 class="titoloPaginaHome" id="index">P.M. INFORMATICA - Qualità
		e affidabilità al vostro servizio</h1>
	<br>
	<div class="div-table">
		<div class="div-row">

			<div class="col-md-6" style="vertical-align: middle;">

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
			<div ng-if="!isMobileDevice" class="col-md-6">
				<div ng-controller="HomeController">
					<carousel interval="myInterval"> <slide
						ng-repeat="slide in servizi" active="slide.active"> <img
						ng-src="{{slide.path}}"
						style="margin: auto; height: 100%; width: 100%"></slide></carousel>
				</div>
			</div>
		</div>

	</div>
</div>