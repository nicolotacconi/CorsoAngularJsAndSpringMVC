angular.module('intranetAngular.controllers')

.controller('PageController',
		[ '$scope', function($scope) {
			
		$scope.risultati = [];
		
		$scope.lanciaBroadcast = function () {
			$scope.$broadcast('EventoBroadcast', ["Parametro Broadcast"]);
		};

		} ]);