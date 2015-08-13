angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('GalleriaController', [ '$scope', function($scope) {

	$scope.myInterval = 3000;
	$scope.slides = [ {
		"imageID" : 1,
		"title" : "Shop",
		"path" : "../resources/images/shop.png"
	}, {
		"imageID" : 2,
		"title" : "Jellyfish",
		"path" : "http://lorempixel.com/400/200/food"
	}, {
		"imageID" : 3,
		"title" : "Lighthouse",
		"path" : "http://lorempixel.com/400/200/sports"
	} ];
} ]);