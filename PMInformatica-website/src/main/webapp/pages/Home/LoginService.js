angular.module('pmInformaticaWebSiteAngular.services')

.factory('loginService', [ '$http', function($http) {

	isAmministratore = false;

	return {
		togle : function() {
			isAmministratore = !isAmministratore;
		}
	
	};

} ]);