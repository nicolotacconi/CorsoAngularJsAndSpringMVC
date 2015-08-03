angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('HomeController',
		[ '$scope', '$location', '$modal', 'loginService', function($scope, $location, $modal, loginService) {

			$scope.isActive = function(viewLocation) {
				return viewLocation === $location.path();
			};

			$scope.openModal = function() {

				$modal.open({
					animation : true,
					templateUrl : "popupLogin.jsp",
					controller : 'LoginController'
				});

			};

			$scope.$watch("loginService.isAmministratore", function(newValue, oldValue) {
				if (newValue != undefined) {
					console.log("OLD:" + oldValue + " - NEW:" + newValue);
				}
			});

		} ]);