angular.module('intranetAngular.controllers')

.controller('RicercaController',
		[ '$scope', function($scope) {
					
			$scope.utente;
					
		
			$scope.ricercaPerUtente = function() {

			
				$scope.$parent.risultati = [{
					utente : 'pippo',
					eta : 35,
					selected: false
			
				}, {
				    utente : 'pluto',
				    eta : 50,
					selected: false
			
				}, {
				    utente : $scope.utente,
				    eta : 60,
					selected: false
			
				} ];
			};
		} ]);