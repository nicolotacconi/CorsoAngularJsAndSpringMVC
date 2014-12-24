angular.module('intranetAngular.controllers')

.controller('PrimoFormController',
		[ '$scope', 'primoFormService', function($scope, primoFormService) {

			$scope.utente;
			$scope.messaggioDiConferma;
			
			$scope.registraUtente = function() {

				primoFormService.registraUtente($scope.utente).success(function(messaggioDiConferma) {
					$scope.messaggioDiConferma = messaggioDiConferma;
					$scope.utente.nome = "";
					$scope.utente.cognome = "";
					$scope.utente.eta = 0;
				}).error(function(error) {
					$scope.message = "ERRORE";
				});
			}
			

} ]);