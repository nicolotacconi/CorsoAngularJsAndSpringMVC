angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('PrenotazioneController', [ '$scope', function($scope) {

	$scope.prenotazione;

	$scope.openDataPopup = function($event) {
		$event.preventDefault();
		$event.stopPropagation();
		$scope.openedPopupData = true;
	};
	
	$scope.prenotaAppuntamento = function() {

	};

} ]);