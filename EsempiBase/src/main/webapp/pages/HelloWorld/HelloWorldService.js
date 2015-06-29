angular.module('intranetAngular.services')

.factory('helloWorldService', ['$http', function($http) {
	return {
		getMessage: function() {
			return $http.get(INTRANET_ANGULAR.contextPath + '/printHelloWorld');
		},
	
		getMessageObj: function() {
			return $http.get(INTRANET_ANGULAR.contextPath + '/printHelloWorldModel');
		},
		
		getMessaggioDiBenvenuto: function() {
			return $http.get(INTRANET_ANGULAR.contextPath + '/getMessaggioDiBenvenuto');
		},
		
		salutaUtente: function(messaggioBenvenuto, utente) {
			return $http.get(INTRANET_ANGULAR.contextPath + '/salutaUtente' , {
				params: {
					messaggioDiBenvenuto: messaggioBenvenuto,
					nome: utente
				}});
		}
	};
	
}]);