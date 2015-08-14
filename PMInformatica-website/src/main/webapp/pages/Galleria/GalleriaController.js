angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('GalleriaController', [ '$scope', 'galleriaService' ,'growl' , function($scope, galleriaService, growl) {

	$scope.myInterval = 3000;
	$scope.slides ;
	
	$scope.getUltimiLavori = function() {
		galleriaService.getUltimiLavori().success(function(ultimiLavori) {
			$scope.slides = ultimiLavori;
		}).error(function(error) {
			growl.error("Errore recuperando gli ultimi lavori");
		});
	};
	
} ]);