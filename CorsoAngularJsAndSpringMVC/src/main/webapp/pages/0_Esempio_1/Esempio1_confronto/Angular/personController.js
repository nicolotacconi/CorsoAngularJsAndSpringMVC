/**
 * file di definizione del nostro controller
 */

var app = angular.module('myApp', []);
		app.controller('personCtrl', function($scope) {
			$scope.persone = [];
			$scope.firstName = "John";
			$scope.lastName = "Doe";
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
		});
		
 