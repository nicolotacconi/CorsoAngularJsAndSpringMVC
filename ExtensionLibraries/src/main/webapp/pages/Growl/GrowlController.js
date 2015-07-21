angular.module('extensionLibraries.controllers')

.controller('GrowlController', [ '$scope', 'growl', function($scope, growl) {

	$scope.pubblicaInfo = function() {
		growl.info("Messaggio di info");
	};
	
	$scope.pubblicaError = function() {

		growl.error("Messaggio di errore");

	};

} ]);