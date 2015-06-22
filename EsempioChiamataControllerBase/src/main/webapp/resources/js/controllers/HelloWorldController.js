angular.module('intranetAngular.controllers')

.controller('HelloWorldController',
		[ '$scope', 'helloWorldService', function($scope, helloWorldService) {

			$scope.message;

			$scope.messageObj;
			
			$scope.messagePromise;

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
			
			$scope.setMessagePromise = function() {

				var promise = helloWorldService.getMessage();
								
				promise.success(function(messagePromise) {
					$scope.messagePromise = messagePromise;
				}).error(function(error) {
					$scope.messagePromise = "ERRORE";
				});
			}
			

		} ]);