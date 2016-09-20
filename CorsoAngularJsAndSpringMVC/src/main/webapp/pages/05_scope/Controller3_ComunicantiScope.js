
angular.module('corsoBaseAngular.controllers')

// QUESTO OGGETTO VERRA' PASSATO TRA I DUE CONTROLLER
.value('UserService', {
	title : null,
	  name: null,
	  email: null,
	  logged: false
	})

.controller('Login3Ctrl', ['$scope','UserService', function($scope,UserService) {
		
	// MODIFICANDO  this.userService MODIFICO ANCHE IL VALUE UserService
	  // FACCIO this.userService = UserService; SOLAMENTE PER PERMETTERE ALLA PAGINA DI VEDERE
	  // UserService 
		$scope.userService = UserService;
		$scope.userService.title = 'Welcome page comunicantiScope'; 
		$scope.login = function() {
			$scope.userService.title = 'Logged';
			$scope.userService.email = "pippo@blabla.com";
			$scope.userService.logged = true;
	  };
	}])


.controller('Welcome3Ctrl', ['$scope','UserService', function($scope,UserService) {
		
		// RECUPERANDO UserService, RECUPERO QUELLO VALORIZZATO DAL CONTROLLER DI LOGIN
		$scope.userService = UserService;
		$scope.reset = function() {
			$scope.userService.title = 'back to Welcome page';
			$scope.userService.name = null;
			$scope.userService.email = null;
			$scope.userService.$parent.logged = false;
	  };
	}])
	
;