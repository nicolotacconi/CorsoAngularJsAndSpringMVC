
angular.module('corsoBaseAngular.controllers')

.controller('MyCtrl', [ '$scope', function($scope) {
	$scope.counter = 3;
	$scope.saluto = 'hello Angular!';

} ]);