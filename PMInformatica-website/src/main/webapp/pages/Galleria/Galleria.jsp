<div>
	

	<h1 class="titoloPagina" id="indexServizi">I nostri ultimi lavori</h1><br> <br>

	<div ng-controller="GalleriaController">
		<carousel interval="myInterval"> <slide
			ng-repeat="slide in slides" active="slide.active"> <img
			ng-src="{{slide.path}}" style="margin: auto;"></slide></carousel>
	</div>
</div>