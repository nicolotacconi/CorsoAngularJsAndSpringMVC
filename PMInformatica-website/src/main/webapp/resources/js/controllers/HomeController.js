angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('HomeController', [ '$scope', '$location', function($scope,$location) {

	$scope.isActive = function(viewLocation) {
		return viewLocation === $location.path();
	};
} ]);