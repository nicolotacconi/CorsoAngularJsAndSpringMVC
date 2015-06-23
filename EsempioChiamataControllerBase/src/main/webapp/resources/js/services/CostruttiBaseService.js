angular.module('intranetAngular.services')

.service('costruttiBaseService', [ '$http', function($http) {
	return {
		getListaUffici : function() {
			return $http.get(INTRANET_ANGULAR.contextPath + '/getUffici');
		}

	};

} ]);