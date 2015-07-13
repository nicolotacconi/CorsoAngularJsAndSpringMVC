describe('Test Karma', function () {
	
	beforeEach(module('intranetAngular'));

	it("la variabile utente deve essere valorizzata con 'Utente'", inject(function ($rootScope, $controller, $httpBackend) {
		var scope = $rootScope.$new();
		var controllerDaTestare = $controller('TestKarmaController', {
			$scope : scope
		});
		expect(scope.utente).toBe("Utente");
	}));
	
	
});