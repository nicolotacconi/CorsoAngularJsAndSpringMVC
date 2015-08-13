angular.module('pmInformaticaWebSiteAngular.services')

.service('loginService', [ '$http', function($http) {

	var isLogged = false;

	return {
		
		login : function(utente) {
			return $http.post(PM_INFORMATICA_WEBSITE.contextPath + '/checkUserPass', utente);
		},
	
		logout: function() {
			isLogged = false;
		},
		
		isLogged: function() {
			return isLogged;
		},
		
		setLogged: function(boolean) {
			isLogged = boolean;
		}
	};

} ]);