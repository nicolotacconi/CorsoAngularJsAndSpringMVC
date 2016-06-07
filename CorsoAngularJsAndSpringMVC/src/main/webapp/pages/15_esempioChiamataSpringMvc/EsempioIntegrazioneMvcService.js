angular.module('corsoBaseAngular.services')

.factory('EsempioIntegrazioneMvcService', [ '$http', function($http) {

	return {
		ricerca : function(autore) {
			
			return $http.get(CORSO_ANGULAR.contextPath + '/cercaLibri?autore='+ autore);
			
		},
	
		aggiungi : function(libro) {
			
			return $http.post(CORSO_ANGULAR.contextPath + '/aggiungiLibro',libro);
			
		}
	
	};

} ]);