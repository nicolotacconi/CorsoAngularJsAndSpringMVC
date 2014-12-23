angular.module('intranetAngular.controllers', [])

.controller('HelloWorldController',
		[ '$scope', 'helloWorldService', function($scope, helloWorldService) {

			$scope.message 	;

			$scope.setMessage = function() {

				helloWorldService.getMessage().success(function(message) {
					$scope.message = message;
				}).error(function(error) {
					$scope.message = "ERRORE";
				});
			}
		} ]);