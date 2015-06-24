angular.module('intranetAngular.controllers')

.controller('HelloWorldController',
		[ '$scope', 'helloWorldService', function($scope, helloWorldService) {

			$scope.message;

			$scope.messageObj;

			$scope.salutoUtente;

			$scope.setMessage = function() {

				helloWorldService.getMessage().success(function(message) {
					$scope.message = message;
				}).error(function(error) {
					$scope.message = "ERRORE";
				});
			};

			$scope.setMessageObj = function() {

				helloWorldService.getMessageObj().success(function(messageObj) {
					$scope.messageObj = messageObj;
				}).error(function(error) {
					$scope.message = "ERRORE";
				});
			};

			$scope.salutaUtente = function() {

				// recupero il messaggio di benvenuto
				helloWorldService.getMessaggioDiBenvenuto().success(function(benvenuto) {
				
					// recupero il messaggio completo anche con il nome
					helloWorldService.salutaUtente(benvenuto,"Pippo").success(function(messaggioDiBenvenutoCompleto) {
						$scope.salutoUtente = messaggioDiBenvenutoCompleto;
					}).error(function(error) {
						$scope.message = "ERRORE";
					});
					
				}).error(function(error) {
					$scope.message = "ERRORE";
				});
			};

		} ]);