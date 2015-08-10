angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('PrenotazioneController', [ '$scope', 'prenotazioneService','growl' , 
                                        function($scope,prenotazioneService,growl) {

	$scope.prenotazione;
	
	$scope.today = new Date();
	
	$scope.openDataPopup = function($event) {
		$event.preventDefault();
		$event.stopPropagation();
		$scope.openedPopupData = true;
	};

	$scope.prenotaAppuntamento = function() {
		prenotazioneService.prenotaAppuntamento($scope.prenotazione).success(function() {
			growl.info("Richiesta inviata correttamente.\nVerrai contattato via email/telefono");
		}).error(function(error) {
			growl.error("Errore inviando la richiesta di prenotazione");
		});
	};

} ]);