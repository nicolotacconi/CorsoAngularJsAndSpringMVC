angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('HomeController',
		[ '$scope', '$location', '$modal', 'loginService', function($scope, $location, $modal, loginService) {

			$scope.isLogged = loginService.isLogged();
			
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
			
			$scope.logout = function(){
				loginService.logout();
			};
			
			
			$scope.$watch(loginService.isLogged, function() {
		    	$scope.isLogged = loginService.isLogged();
			});
			
		} ]);