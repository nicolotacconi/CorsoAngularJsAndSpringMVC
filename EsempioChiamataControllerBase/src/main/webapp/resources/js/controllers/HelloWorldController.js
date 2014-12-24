angular.module('intranetAngular.controllers')

.controller('HelloWorldController',
		[ '$scope', 'helloWorldService', function($scope, helloWorldService) {

			$scope.message;

			$scope.messageObj;

			$scope.setMessage = function() {

				helloWorldService.getMessage().success(function(message) {
					$scope.message = message;
				}).error(function(error) {
					$scope.message = "ERRORE";
				});
			}

			$scope.setMessageObj = function() {

				helloWorldService.getMessageObj().success(function(messageObj) {
					$scope.messageObj = messageObj;
				}).error(function(error) {
					$scope.message = "ERRORE";
				});
			}
			

		} ]);