angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('IntestazioneController',
		[ '$scope', '$location', '$modal', 'loginService','growl', 
		  		function($scope, $location, $modal, loginService,growl) {
			
			$scope.isLogged = loginService.isLogged();
			
			$scope.isActive = function(viewLocation) {
				return viewLocation === $location.path();
			};
			
			$scope.openModal = function() {

				var modalInstance = $modal.open({
					animation : true,
					templateUrl : "popupLogin.jsp",
					controller : 'LoginController',
					 resolve: {
						 // serve per il form dell'utente
						 utente: function () {
							 var utente = {user: '', password: ''};
					         return utente;
					     } 
					 }
				}).result.then(function (loginCorrect) {
					// controllo il risultato del popup
					if (loginCorrect) {
						growl.info("Autenticazione Eseguita");
					}
					else{
						growl.error("Utente e password non corretti");
					}
				});

			};
			
			$scope.logout = function(){
				loginService.logout();
			};
						
			$scope.$watch(loginService.isLogged, function() {
		    	$scope.isLogged = loginService.isLogged();
			});
			
} ]);