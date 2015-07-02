angular.module('intranetAngular.controllers')

.controller('RisultatiController',
		[ '$scope', function($scope) {
			
			$scope.risultatiSelezionati = [];
			
			$scope.printSelected = function(){
				
				$scope.risultatiSelezionati = [];
				
				angular.forEach($scope.$parent.risultati, function(risultato){
					if (risultato.selected){
						$scope.risultatiSelezionati.push(risultato);
					}
				});
			};
			
			$scope.$on('EventoBroadcast', function(event, parametro) { 
				console.log("Intercettato evento di Broadcast "+parametro); 
			});

		} ]);