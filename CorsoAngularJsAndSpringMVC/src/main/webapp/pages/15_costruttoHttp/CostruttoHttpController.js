angular.module('corsoBaseAngular.controllers')

.controller('CostruttoHttpController', [ '$scope','CostruttoHttpService'
                                                  , function($scope,CostruttoHttpService) {

	$scope.numeroFilm = '';
	
	$scope.risultatoRicerca;
	$scope.ricercaEseguita = false;
	$scope.messaggioErrore;
	
	$scope.ricerca = function() {
		CostruttoHttpService.ricerca($scope.numeroFilm).success(function(risultatoRicerca) {
			
			$scope.risultatoRicerca = risultatoRicerca;
			$scope.ricercaEseguita = true;
			
		}).error(function(error) {
			$scope.messaggioErrore = error.detail;
			$scope.ricercaEseguita = true;
		});
	};


} ]);