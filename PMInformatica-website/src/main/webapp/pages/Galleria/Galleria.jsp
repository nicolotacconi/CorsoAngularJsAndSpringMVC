<div>
	<div ng-controller="GalleriaController">
		<carousel interval="myInterval"> <slide
			ng-repeat="slide in slides" active="slide.active"> <img
			ng-src="{{slide.Path}}" style="margin: auto;">
		</slide> </carousel>
	</div>
</div>