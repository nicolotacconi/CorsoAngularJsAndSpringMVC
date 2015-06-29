angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('LoginController', [ '$scope', 'growl', function($scope, growl) {

	$scope.utente;
	$scope.password;
	
	$scope.isAmministratore = false;

	$scope.login = function() {
		if ($scope.utente != 'pminformatica' || $scope.password != 'pswPmInformatica#2015') {
			growl.error("Utente e password non corretti");
		}
		else{
			growl.info("Autenticazione Eseguita");
			$scope.isAmministratore = true;
			$scope.utente = "";
			$scope.password = "";
		}
	}

} ]);