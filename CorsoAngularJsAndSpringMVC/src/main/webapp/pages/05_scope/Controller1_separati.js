
angular.module('corsoBaseAngular.controllers')



// HO DUE CONTROLLER COMPLETAMENTE SLEGATI, CHE NON POSSONO COMUNICARE SE NON INIETTANDO COSTANTI O VALUE
.controller('Login1Ctrl',function(){
    this.title = 'User Info';
    this.name = 'Peter Johnson';
    this.altro="altrotxt";
})
  
.controller('Welcome1Ctrl',  function(){
    this.title = 'Location';
    this.location = 'Italy';
} )

	
;