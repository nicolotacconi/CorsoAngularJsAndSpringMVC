
angular.module('corsoBaseAngular.controllers')



//HO DUE CONTROLLER COMPLETAMENTE SLEGATI, CHE NON POSSONO COMUNICARE SE NON INIETTANDO COSTANTI O VALUE
.controller('Login1Ctrl',['$scope', function($scope){
	$scope.title = 'User Info';
	$scope.name = 'Peter Johnson';
	$scope.altro="altrotxt";

	
	$scope.chiamataBroadcastPadre = function() {
		$scope.$broadcast('eventoBroadcast');
	};
	
	$scope.chiamataEmitPadre = function() {
		$scope.$emit('eventoEmit');
	};
	
	$scope.$on('eventoBroadcast', function() {
		console.log('BROADCAST PADRE: Sono stato intercettato');
	  });
	
	$scope.$on('eventoEmit', function() {
		console.log('EMIT PADRE: Sono stato intercettato');

	});
}])

.controller('Welcome1Ctrl',['$scope', function($scope){
	$scope.title = 'Location';
	$scope.location = 'Italy';
	
	$scope.chiamataBroadcastFiglio = function() {
		$scope.$broadcast('eventoBroadcast');
	};
	
	$scope.chiamataEmitFiglio = function() {
		$scope.$emit('eventoEmit');
	};
	
	$scope.$on('eventoEmit', function() {
		console.log('EMIT FIGLIO: Sono stato intercettato');
	});
	
	$scope.$on('eventoBroadcast', function() {
		console.log('BROADCAST FIGLIO: Sono stato intercettato');
	  });
}] )


;