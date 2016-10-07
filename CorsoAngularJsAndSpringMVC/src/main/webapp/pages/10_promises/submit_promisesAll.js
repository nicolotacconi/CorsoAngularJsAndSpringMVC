
angular.module('corsoBaseAngular.controllers')



.controller('SubmitPromisesCtrl',['$scope','$timeout', '$q', function($scope,$timeout, $q){
	$scope.title = 'Iscriviti';
	$scope.iscritto = false;
	$scope.output = false;
	$scope.user = 'John Doe';
	$scope.email = 'john.doe@gmail.com';
	$scope.iscrizione = function() {
		$scope.title = 'Iscritto';

		console.log('invoco la funzionalità della promise');

		var promises = [];
		var promiseUser = $scope.helloPromise($scope.user);
		var promiseMail = $scope.mailPromise($scope.email);
		
		promises.push(promiseUser);
		promises.push(promiseMail);
		
		//var promiseConta = $scope.promisePerditempo(); promises.push(promiseConta);  //posso aggiunere altre che non usano timeout


		$q.all(promises).then(  //la gestione dei casi della promise
				function completed(result) {
					console.log('SUCCESS: ' + result);
					this.output = 'SUCCESS: ' + result;
					$scope.iscritto = true;
					console.log('in questo caso mi restituisce un array con i risultati di ciascuna promise');
				}.bind(this)
		)
		.catch(
				function failed(reason) {
					console.log('FAILED: ' + reason);
					this.output = 'FAILED: ' + reason;
					$scope.iscritto = false;
					console.log('in questo caso mi restituisce la ragione del primo fallimento verificato');
				}.bind(this)
		)
		.finally(
				function ender() {
					console.log('Always executed');
				}
		);
		console.log('eseguo il codice dopo invocazione promise');
	};

	$scope.reset = function() {
		$scope.title = 'back to Iscriviti';
		$scope.user = 'John Doe';
		$scope.email = 'john.doe@gmail.com';
		$scope.iscritto = false;
		$scope.output = false;
	};

	// QUESTA E' LA CHIAMATA CHE "VERIFICA" L'UTENZA (MOCK DI UN SERVIZIO HTTP)
	$scope.helloPromise =  function helloPromise(name) {

		var deferredUser = $q.defer(); // viene creato il nostro oggetto deferred
		// 
		$timeout(
				function timehotHandler() {  //funzione per simulare un task che impiega del tempo
					if (name != 'Pinco Pallo'){
						// Promise SUCCESS
						deferredUser.resolve('utenza ' + name + ' accettata');
					} else {
						// Promise FAILURE
						deferredUser.reject('utenza' + name + ' non consentita.');
					}
				}, 1000);
		return deferredUser.promise;  //crea e restituisce l'oggetto promise legato alla nostra deferred
	};

	// QUESTA E' LA CHIAMATA CHE "VERIFICA" LA MAIL
	$scope.mailPromise =  function validaMail(mail){

		var deferredMail = $q.defer(); // viene creato il nostro oggetto deferred
		// 
		$timeout(
				function timehotHandler() {
					if (mail != 'john.doe@gmail.com'){
						// Promise SUCCESS
						deferredMail.resolve('indirizzo mail ' + mail + ' accettato');
					} else {
						// Promise FAILURE
						deferredMail.reject('indirizzo mail ' + mail + ' non consentito.');
					}
				}, 2500);
		return deferredMail.promise;  //crea e restituisce l'oggetto promise legato alla nostra deferred
	};

	
	
	//esempio di una promise che non usa un timeout, ma impiega del tempo per elaborare
	$scope.promisePerditempo =  function conta(){
		var i = 10000, j = 0; 
		var deferredConta = $q.defer(); 
		if (i > 1000 ){
			 for (var int = 0; int < i; int++) {
					j++;		
			}
			deferredConta.resolve('finito di contare');
		} else {
			deferredConta.reject('troppo poco.');
		}
		return deferredConta.promise; 
	};
}])



;