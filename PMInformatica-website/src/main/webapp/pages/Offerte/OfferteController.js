angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('OfferteController', [ '$scope' ,'offerteService', function($scope, offerteService) {

	$scope.offerte ;
	
	$scope.getOfferte = function() {
		offerteService.getOfferte().success(function(offerte) {
			$scope.offerte = offerte;
		}).error(function(error) {
			growl.error("Errore recuperando le offerte");
		});
	};
	
} ]);