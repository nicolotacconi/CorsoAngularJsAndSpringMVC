
angular.module('corsoBaseAngular.controllers')

// QUESTO OGGETTO VERRA' PASSATO TRA I DUE CONTROLLER
.value('UserService', {
	title : null,
	  name: null,
	  email: null,
	  logged: false
	})

	.controller('Login3Ctrl', function(UserService) {
		
	
	  // MODIFICANDO  this.userService MODIFICO ANCHE IL VALUE UserService
	  // FACCIO this.userService = UserService; SOLAMENTE PER PERMETTERE ALLA PAGINA DI VEDERE
	  // UserService 
	  this.userService = UserService;
	  this.userService.title = 'Welcome page comuncantiUserService';  //inizializzando la pagina prende questo valore, poi finchè non si fa F5, tiene quello sovrascritto dalle funzioni. Questa parte di codice è letta solo in fase di inizializzazione della pagina
	  this.login = function() {
		this.userService.title = 'Logged';
	    this.userService.email = "pippo@blabla.com";
	    this.userService.logged = true;
	  };
	})

	.controller('Welcome3Ctrl', function(UserService) {
		
	  // RECUPERANDO UserService, RECUPERO QUELLO VALORIZZATO DAL CONTROLLER DI LOGIN
	  this.userService = UserService;
	  
	  this.reset = function() {
		this.userService.title = 'back to Welcome page';
	    this.userService.name = null;
	    this.userService.email = null;
	    this.userService.logged = false;
	  }
	})
	
;