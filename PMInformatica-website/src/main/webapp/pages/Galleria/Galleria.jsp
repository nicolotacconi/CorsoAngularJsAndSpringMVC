<div>
	

	<h1 class="titoloPagina" id="indexServizi">I nostri ultimi lavori</h1><br> <br>

	<div ng-controller="GalleriaController" ng-init="getUltimiLavori()">
		<carousel interval="myInterval"> <slide
			ng-repeat="slide in slides" active="slide.active"> <img
			ng-src="data:image/jpg;base64,{{slide.image}}" style="margin: auto;"></slide></carousel>
	</div>
</div>