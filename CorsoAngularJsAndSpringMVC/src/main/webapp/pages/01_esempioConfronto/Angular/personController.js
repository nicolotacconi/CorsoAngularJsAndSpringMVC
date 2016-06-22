/**
 * file di definizione del nostro controller
 */

angular.module('myApp.controllers')
.controller('personCtrl',['$scope', function($scope) {
	$scope.persone = [];
	//$scope.firstName = "John";
	//$scope.lastName = "Doe";
	$scope.firstName = "";
	$scope.lastName = "";
	$scope.stringaRicerca = "";
	$scope.filtro = "";
	$scope.fullNameUpp = function() {
		return $scope.firstName.toUpperCase() + " " + $scope.lastName.toUpperCase();
	};
	

	$scope.aggiungiPersona = function() {
		nome = $scope.fullNameUpp();
		if(nome.trim().length > 1){
			$scope.persone.push($scope.fullNameUpp()) ;
		}
	}
	
	$scope.impostaFiltro = function() {
		$scope.filtro = $scope.stringaRicerca;
	}
} ]);



		
 