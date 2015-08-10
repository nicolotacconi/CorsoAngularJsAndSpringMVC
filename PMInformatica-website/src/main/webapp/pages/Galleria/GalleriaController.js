angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('GalleriaController', [ '$scope', function($scope) {

	$scope.myInterval = 3000;
	$scope.slides = [ {
		"ImageID" : 1,
		"Title" : "Tulips",
		"Summary" : "This is summary of Tulips",
		"Path" : "http://lorempixel.com/400/200/"
	}, {
		"ImageID" : 2,
		"Title" : "Jellyfish",
		"Summary" : "This is something about Jellyfish",
		"Path" : "http://lorempixel.com/400/200/food"
	}, {
		"ImageID" : 3,
		"Title" : "Lighthouse",
		"Summary" : "Summary of Lighthouse",
		"Path" : "http://lorempixel.com/400/200/sports"
	} ];
} ]);