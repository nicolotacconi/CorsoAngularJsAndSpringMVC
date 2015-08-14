angular.module('pmInformaticaWebSiteAngular.services')

.factory('offerteService', ['$http', function($http) {

	return {
		getOfferte: function() {
			return $http.post(PM_INFORMATICA_WEBSITE.contextPath + '/getOfferte');
		}
	
	};
		
}]);		