angular.module('pmInformaticaWebSiteAngular.services')

.service('loginService', [ '$http', function($http) {

	var isLogged = false;

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