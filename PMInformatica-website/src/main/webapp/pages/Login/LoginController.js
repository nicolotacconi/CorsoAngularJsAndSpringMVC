angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('LoginController', [ '$scope', 'loginService', '$modalInstance', 'utente' , '$q'
                                 , function($scope, loginService, $modalInstance, utente, $q) {

	$scope.utente = utente;
	
	$scope.login = function() {
						
		var deferred = $q.defer();
		var promise = deferred.promise;
		 
		promise
		  .then(function() {
			  // chiamo il servizio
			 return loginService.login($scope.utente.user, $scope.utente.password);
		  })
		  .then(function(credezialiOk) {
			  // chiudo il popup dando l'ok o meno del login
		      $modalInstance.close(credezialiOk);
		   });
		 
		deferred.resolve();
	
	    
		
	};
	
} ]);