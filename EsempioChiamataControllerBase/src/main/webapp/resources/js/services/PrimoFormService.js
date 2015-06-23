angular.module('intranetAngular.services')

.factory('primoFormService', ['$http', function($http) {

	return {
		registraUtente: function(utente) {
			return $http.post(INTRANET_ANGULAR.contextPath + '/registraUtente', utente);
		}
	
	};
		
}]);		