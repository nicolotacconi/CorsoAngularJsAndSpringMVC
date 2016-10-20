
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
}])



.directive('myDomDirective', function () { //la direttiva gestisce delle funzioni attivati da eventi sull'elemento 
    return {
        link: function ($scope, element, attrs) {
            element.bind('click', function () {
                element.html('You clicked me!'); //sostituisce il contenuto del tag
            });
            element.bind('mouseenter', function () {
                element.css('background-color', 'yellow');
            });
            element.bind('mouseleave', function () {
                element.css('background-color', 'white');
            });
        }
    };
})

.directive('helloWorld', function() {
  return {
    restrict: 'AE',  //definito come attributo e come elemento
    replace: true,
    template: '<p style="background-color:{{color}}">Hello World</p>',  //il contenuto del tag viene perso e sostituito da questo dichiarato
    link: function(scope, elem, attrs) {
      elem.bind('click', function() { // funzione associata all'evento per resettare il colore a bianco
        elem.css('background-color', 'white');
        scope.$apply(function() {
          scope.color = "white";
        });
      });
      elem.bind('mouseover', function() { // funzione associata per cambiare cursore come se si passasse su un pulsante
        elem.css('cursor', 'pointer');
      });
    }
  };
})

.directive ('myCustomer', function(){
	
  return {
    transclude: true,  //il transclude serve sia qui sia nel file HTML
    scope: {
    	userName: '='
		},
		templateUrl: 'ExternalDirective.html'
	};
})
;