angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('LoginController', [ '$scope', 'growl', 'loginService', function($scope, growl, loginService ) {

	$scope.utente;
	$scope.password;
	

	$scope.login = function() {
		if ($scope.utente != 'pminformatica' || $scope.password != 'pswPmInformatica#2015') {
			growl.error("Utente e password non corretti");
		}
		else{
			growl.info("Autenticazione Eseguita");
			loginService.togle();
			$scope.utente = "";
			$scope.password = "";
		}
	}

} ]);