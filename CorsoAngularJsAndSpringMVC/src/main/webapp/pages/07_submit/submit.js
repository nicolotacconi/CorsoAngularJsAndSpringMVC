
angular.module('corsoBaseAngular.controllers')



//HO DUE CONTROLLER COMPLETAMENTE SLEGATI, CHE NON POSSONO COMUNICARE SE NON INIETTANDO COSTANTI O VALUE
.controller('SubmitCtrl',['$scope', function($scope){
	$scope.title = 'Iscriviti';
	$scope.iscritto = false;
	$scope.user = 'John Doe';
	$scope.email = 'john.doe@gmail.com';
	$scope.iscrizione = function() {
		$scope.title = 'Iscritto';
		$scope.iscritto = true;
	};
	$scope.reset = function() {
		$scope.title = 'back to Iscriviti';
		$scope.user = 'John Doe';
		$scope.email = 'john.doe@gmail.com';
		$scope.iscritto = false;
	};
}])



;