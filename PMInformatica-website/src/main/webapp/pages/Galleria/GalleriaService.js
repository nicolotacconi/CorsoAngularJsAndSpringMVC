angular.module('pmInformaticaWebSiteAngular.services')

.factory('galleriaService', ['$http', function($http) {

	return {
		getUltimiLavori: function() {
			return $http.post(PM_INFORMATICA_WEBSITE.contextPath + '/getUltimiLavori');
		}
	
	};
		
}]);		