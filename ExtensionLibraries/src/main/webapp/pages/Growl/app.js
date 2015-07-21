var extensionLibraries = angular.module('extensionLibraries', [
  'extensionLibraries.controllers','angular-growl'
]);

angular.module('extensionLibraries.controllers', []);

extensionLibraries.config([ 'growlProvider', function(growlProvider) {
	growlProvider.globalTimeToLive({
		success : 5000,
		error : 10000,
		warning : 5000,
		info : 5000
	});
} ]);