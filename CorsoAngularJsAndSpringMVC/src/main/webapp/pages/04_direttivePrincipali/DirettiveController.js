angular.module('corsoBaseAngular.controllers')

.controller('direttiveController', [ '$scope', function($scope) {

	$scope.variabileSaluto = 'ciao';
	$scope.variabileEsempio = 'nessuno';
	
	$scope.elementiRepeat = [
	   	                  "Mario Rossi",
	   	                  "Carlo Bianchi",
	   	                  "Giuseppe Verdi",
	   	                  "Pinco Pallo"
	   	              ];
	
	$scope.elementiSwitch = [
		   	                  "Mercurio",
		   	                  "Venere",
		   	                  "Marte",
		   	                  "Terra",
		   	                  "Giove",
		   	                  "Nettuno",
		   	                  "Urano",
		   	                  "Plutone",
		   	                  "Altri"
		   	              ];
		

} ]);