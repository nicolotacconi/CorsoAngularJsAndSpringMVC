angular.module('pmInformaticaWebSiteAngular.services')

.factory('prenotazioneService', ['$http', function($http) {

	return {
		prenotaAppuntamento: function(prenotazione) {
			console.log(prenotazione);
			return $http.post(PM_INFORMATICA_WEBSITE.contextPath + '/prenotaAppuntamento', prenotazione);
		}
	
	};
		
}]);		