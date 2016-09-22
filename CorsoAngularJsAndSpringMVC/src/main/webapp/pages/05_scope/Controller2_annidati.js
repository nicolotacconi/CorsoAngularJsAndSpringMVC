
angular.module('corsoBaseAngular.controllers')



// HO DUE CONTROLLER COMPLETAMENTE SLEGATI, CHE NON POSSONO COMUNICARE SE NON INIETTANDO COSTANTI O VALUE
.controller('Login1Ctrl',['$scope', function($scope){
	$scope.title = 'User Info';
	$scope.name = 'Peter Johnson';
	$scope.altro="altrotxt";
}])
  
.controller('Welcome1Ctrl',['$scope', function($scope){
	$scope.title = 'Location';
	$scope.location = 'Italy';
}] )

	
;