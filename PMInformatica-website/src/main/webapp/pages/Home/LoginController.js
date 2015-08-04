angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('LoginController', [ '$scope', 'growl', 'loginService' , 
                                 function($scope, growl, loginService ) {

	$scope.utente;
	$scope.password;
	

	$scope.login = function() {
		var loginCorrect = loginService.login($scope.utente , $scope.password);
		
		if (loginCorrect) {
			growl.info("Autenticazione Eseguita");
			$scope.utente = "";
			$scope.password = "";
		}
		else{
			growl.error("Utente e password non corretti");
			$scope.utente = "";
			$scope.password = "";
		}
	}
	
	

} ]);