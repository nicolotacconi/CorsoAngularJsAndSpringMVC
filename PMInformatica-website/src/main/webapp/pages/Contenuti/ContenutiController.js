angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('ContenutiController', [ '$scope', function($scope) {

	$scope.contenuto;

	$scope.caricaContenuto = function() {
		
		$scope.contenuto.image = $scope.myFile;
		console.log($scope.contenuto);
	};

} ]);