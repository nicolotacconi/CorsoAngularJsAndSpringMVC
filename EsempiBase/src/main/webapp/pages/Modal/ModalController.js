angular.module('intranetAngular.controllers')

.controller('ModalController',
		[ '$scope', '$modal', 'modalService', function($scope, $modal, modalService) {

			
	// esempio semplice di lavorare con liste
			
	$scope.uffici ;
	
	$scope.getUffici = function() {

		modalService.getListaUffici().success(function(uffici) {
			$scope.uffici = uffici;
		});
	};
	
	
	$scope.openModal = function(ufficioSelected) {
		
		// recupero il dettaglio
		modalService.getDettaglioUfficio(ufficioSelected).success(function(dettaglioUfficio) {
	  	
		  	$modal.open({
				animation : true,
				templateUrl : "popupUfficio.jsp",
				controller : 'popupController',
				resolve : {
					ufficio : function() {
						return dettaglioUfficio;
					}
				}
			});
		}).error(function(error) {
			alert(error);
		});
		
	  	
	};
	

} ])

.controller('popupController', function ($scope, ufficio) {
	
	  $scope.ufficio = ufficio;

	});