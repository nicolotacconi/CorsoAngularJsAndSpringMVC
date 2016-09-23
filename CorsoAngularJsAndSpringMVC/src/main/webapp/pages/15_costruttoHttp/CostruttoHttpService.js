angular.module('corsoBaseAngular.services')

.factory('CostruttoHttpService', [ '$http', function($http) {

	return {
		ricerca : function(numeroFilm) {
			
			return $http.get('http://swapi.co/api/films/'+ numeroFilm+"/");
			
		}
		
	};

} ]);