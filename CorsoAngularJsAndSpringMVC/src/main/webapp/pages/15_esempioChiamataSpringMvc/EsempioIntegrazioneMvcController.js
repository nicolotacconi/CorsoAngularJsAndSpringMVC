angular.module('corsoBaseAngular.controllers')

.controller('EsempioIntegrazioneMvcController', [ '$scope','EsempioIntegrazioneMvcService'
                                                  , function($scope,EsempioIntegrazioneMvcService) {

	$scope.autore = '';
	
	$scope.risultatiRicerca ;
	
	$scope.libroNew ;
	
	$scope.ricerca = function() {
		EsempioIntegrazioneMvcService.ricerca($scope.autore).success(function(risultatiRicerca) {
			
			$scope.risultatiRicerca = risultatiRicerca;
			
		}).error(function(error) {
			console.log("Errore nella ricerca");
		});
	};
	
	$scope.aggiungi = function() {
		EsempioIntegrazioneMvcService.aggiungi($scope.libroNew).success(function() {
						
			$scope.libroNew.titolo = '';
			$scope.libroNew.autore = '';
			
			console.log('libro aggiunto');
			
		}).error(function(error) {
			console.log("Errore nella ricerca");
		});
	};

} ]);