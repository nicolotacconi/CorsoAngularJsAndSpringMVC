/**
 * file di definizione del nostro controller
 */

angular.module('myApp.controllers')
.controller('personCtrl',['$scope', function($scope) {
	$scope.firstName = "John";
	$scope.lastName = "Doe";
	$scope.fullNameUpp = function() {
		return $scope.firstName.toUpperCase() + " " + $scope.lastName.toUpperCase();
	};
} ]);
