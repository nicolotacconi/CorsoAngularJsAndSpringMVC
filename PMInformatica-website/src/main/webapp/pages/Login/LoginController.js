angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('LoginController', [ '$scope', 'loginService', '$modalInstance', 'utente' , '$q'
                                 , function($scope, loginService, $modalInstance, utente, $q) {

	$scope.utente = utente;
	
	$scope.login = function() {
			
		
		loginService.login($scope.utente).success(function(esitoLogin) {
			 loginService.setLogged(esitoLogin);
			 $modalInstance.close(esitoLogin);
			return esitoLogin;
		}).error(function(error) {
			return false;
		});
			
	    
		
	};
	
} ]);