
angular.module('corsoBaseAngular.controllers')



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
	$scope.$watch('user',   //  <- posso usare il nome della variabile perché dichiaro il mio watcher dentro lo scope
		      function tracciaCambioValore(newVal, oldVal) {// VIENE PASSATO IL VECCHIO PARAMETRO E ANCHE IL NUOVO
		        if (newVal) {// SE IL NUOVO VALORE NON E' BLANK SCRIVO SULLA CONSOLE E AGGIORNO LE VARIABILI
		          console.log('valore cambiato da: ' + oldVal + ' a:'  + newVal);
		        }
		      }
	);
}])



;