angular.module('intranetAngular.controllers')

.controller('WatchController',
		[ '$scope', function($scope) {
					
			$scope.utente;
			
			$scope.salutoUtente;

			$scope.saluta = function() {
				$scope.salutoUtente = $scope.utente;
			};

			$scope.$watch("salutoUtente", function(newValue, oldValue) {
			    if(newValue != undefined){
			    	console.log("OLD:" + oldValue+ " - NEW:" + newValue);
			    }
			  });

		} ]);