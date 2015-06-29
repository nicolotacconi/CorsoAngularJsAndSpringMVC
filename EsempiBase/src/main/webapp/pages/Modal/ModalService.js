angular.module('intranetAngular.services')

.factory('modalService', [ '$http', function($http) {
	return {
		getListaUffici : function() {
			return $http.get(INTRANET_ANGULAR.contextPath + '/getInfoBaseUffici');
		},
	
		getDettaglioUfficio : function(ufficio) {
			return $http.post(INTRANET_ANGULAR.contextPath + '/getInfoDettagliata',ufficio);
		}

	};

} ]);