angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('GalleriaController', [ '$scope', function($scope) {

	$scope.myInterval = 3000;
	$scope.slides = [ {
		"ImageID" : 1,
		"Title" : "Shop",
		"Path" : "../../resources/images/shop.png"
	}, {
		"ImageID" : 2,
		"Title" : "Jellyfish",
		"Path" : "http://lorempixel.com/400/200/food"
	}, {
		"ImageID" : 3,
		"Title" : "Lighthouse",
		"Path" : "http://lorempixel.com/400/200/sports"
	} ];
} ]);