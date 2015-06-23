angular.module('intranetAngular.controllers')

.controller('CostruttiBaseController',
		[ '$scope', 'costruttiBaseService', function($scope, costruttiBaseService) {

			
	// esempio semplice di lavorare con liste
			
	$scope.uffici ;
	
	$scope.getUffici = function() {

		costruttiBaseService.getListaUffici().success(function(uffici) {
			$scope.uffici = uffici;
		});
	};
	
	// esempio combobox
	$scope.selectedUfficio;
	
	

} ]);