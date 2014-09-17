/**
 * 
 */

angular.module('myFstApp.services', []).factory('applicazioniService',
		function($http) {

			var applicazioni = {};

			applicazioni.getApplicazioni = function() {
				return $http.get(MFA.contextPath + 'applicazione/list');
			};

			return applicazioni;
		});