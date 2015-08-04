angular.module('pmInformaticaWebSiteAngular.services')

.factory('loginService', [ '$http', function($http) {

	isLogged = false;

	return {
		
		login : function(utente, password) {
			if (utente != 'pminformatica' || password != 'pswPmInformatica#2015') {
				isLogged = false;
				return false;
			}
			else{
				isLogged = true;
				return true;
			}
		},
	
		logout: function() {
			isLogged = false;
		},
		
		isLogged: function() {
			return isLogged;
		}

	};

} ]);