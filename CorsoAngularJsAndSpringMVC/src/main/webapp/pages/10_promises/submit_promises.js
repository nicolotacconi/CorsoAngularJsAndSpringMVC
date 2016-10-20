
angular.module('corsoBaseAngular.controllers')



.controller('SubmitPromisesCtrl',['$scope','$timeout', '$q', function($scope,$timeout, $q){
	$scope.title = 'Iscriviti';
	$scope.iscritto = false;
	$scope.output = false;
	$scope.user = 'John Doe';
	$scope.email = 'john.doe@gmail.com';
	$scope.iscrizione = function() {
		$scope.title = 'Iscritto';
		//$scope.iscritto = true;
		var promise = $scope.helloPromise($scope.user);
		
		promise.then(  //la gestione dei casi della promise
				function completed(result) {
					this.output = 'SUCCESS: ' + result;
				}.bind(this)
		)
		.catch(
				function failed(reason) {
					this.output = 'FAILED: ' + reason;
				}.bind(this)
		)
		.finally(
				function ender() {
					console.log('Always executed');
				}
		);
	};
	$scope.reset = function() {
		$scope.title = 'back to Iscriviti';
		$scope.user = 'John Doe';
		$scope.email = 'john.doe@gmail.com';
		$scope.iscritto = false;
		$scope.output = false;
	};
	
	// QUESTA E' LA CHIAMATA CHE CI METTERA' UN SECONDO (MOCK DI UN SERVIZIO HTTP)
	$scope.helloPromise =  function helloPromise(name) {

		var deferred = $q.defer(); // viene creato il nostro oggetto deferred
		// 
		$timeout(
				function timehotHandler() {
					if (name != 'Pinco Pallo'){
						// Promise SUCCESS
						deferred.resolve('Hi, ' + name + '!');
						$scope.iscritto = true;
					} else {
						// Promise FAILURE
						deferred.reject('Mr ' + name + ' is not allowed.');
						$scope.iscritto = false;
					}
				}, 1500);  // <- la mia funzione ci impiega un po' per essere completata
		return deferred.promise;  //crea e restituisce l'oggetto promise legato alla nostra deferred
	};
}])



;