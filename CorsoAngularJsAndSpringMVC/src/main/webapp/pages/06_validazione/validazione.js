
angular.module('corsoBaseAngular.controllers')



// HO DUE CONTROLLER COMPLETAMENTE SLEGATI, CHE NON POSSONO COMUNICARE SE NON INIETTANDO COSTANTI O VALUE
.controller('ValidazioneCtrl',['$scope', function($scope){
	 $scope.user = 'John Doe';
	    $scope.email = 'john.doe@gmail.com';
}])
  

	
;