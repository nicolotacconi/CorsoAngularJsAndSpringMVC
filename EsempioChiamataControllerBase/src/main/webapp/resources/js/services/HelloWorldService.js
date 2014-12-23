angular.module('intranetAngular.services',[])

.factory('helloWorldService', ['$http', function($http) {
	return {
		getMessage: function() {
			return $http.get(INTRANET_ANGULAR.contextPath + '/printHelloWorld');
		}
	};
}]);