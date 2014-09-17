/**
 * 
 */

angular.module('myFstApp.controllers', []).controller('applicazioniController',
		function($scope, applicazioniService) {

			applicazioniService.getApplicazioni().success(function(data) {
				//Dig into the responde to get the relevant data
				$scope.applicazioniList = data;
			}).error(function(data) {
				alert('errore!');
			});

		});