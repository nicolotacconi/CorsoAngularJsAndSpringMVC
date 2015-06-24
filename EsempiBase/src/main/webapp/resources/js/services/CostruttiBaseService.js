angular.module('intranetAngular.services')

.factory('costruttiBaseService', [ '$http', function($http) {
	return {
		getListaUffici : function() {
			return $http.get(INTRANET_ANGULAR.contextPath + '/getUffici');
		}

	};

} ]);