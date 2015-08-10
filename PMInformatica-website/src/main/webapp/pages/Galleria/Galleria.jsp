<div>
	<div>
		<div ng-controller="GalleriaController" id="slides_control">
			<carousel interval="myInterval"> <slide
				ng-repeat="slide in slides" active="slide.active"> <img
				ng-src="{{slide.image}}" class="imageSlide">
			<div class="carousel-caption">
				<h4>Slide {{$index+1}}</h4>
			</div>
			</slide> </carousel>
		</div>
	</div>
</div>