

corsoBaseAngular.config(['$routeProvider',function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "HomePage.jsp"
    })
    .when("/home", {
        templateUrl : "HomePage.jsp"
    })
    .when("/pagina1", {
        templateUrl : "Pagina1.jsp"
    })
    .when("/pagina2", {
    	templateUrl : "Pagina2.jsp"
    });
}]);