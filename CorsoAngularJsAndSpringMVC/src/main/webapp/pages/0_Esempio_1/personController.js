/**
 * file di definizione del nostro controller
 */

var app = angular.module('myApp', []);
		app.controller('personCtrl', function($scope) {
			$scope.firstName = "John";
			$scope.lastName = "Doe";
			$scope.fullNameUpp = function() {
				return $scope.firstName.toUpperCase() + " " + $scope.lastName.toUpperCase();
			};
		});