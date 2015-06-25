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
	
} ])

.controller('MultiSelectController',
		[ '$scope', 'costruttiBaseService', function($scope, costruttiBaseService) {

					
	$scope.uffici ;
	
	$scope.getUffici = function() {

		costruttiBaseService.getListaUffici().success(function(uffici) {
			$scope.uffici = uffici;
		});
	};
		
	
	$scope.toggleActive = function(ufficio){
		ufficio.active = !ufficio.active;
	};
	
	$scope.stringaUfficiSelected = function(){

		var ufficiSelected = "";

		// Use the angular forEach helper method to
		// loop through the services array:

		angular.forEach($scope.uffici, function(ufficio){
			if (ufficio.active){
				ufficiSelected =  ufficiSelected + ", " +ufficio.nome;
			}
		});

		return ufficiSelected;
	};

} ])

.controller('TabsController',
		[ '$scope',function($scope) {

	$scope.selectedTab = "Tab1";
			
	$scope.testoTab1 = "Ciao Sono nel tab 1" ;
	
	$scope.testoTab2 = "Ciao Sono nel tab 2" ;
	

} ]);