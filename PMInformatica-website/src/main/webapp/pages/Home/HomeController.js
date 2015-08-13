angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('HomeController', [ '$scope', function($scope) {

	$scope.myInterval = 3000;
	$scope.servizi = [ {
		"imageID" : 1,
		"title" : "Mobile",
		"path" : "../../resources/images/serviziHome/Mobile.jpg"
	}, {
		"imageID" : 2,
		"title" : "Notebook",
		"path" : "../../resources/images/serviziHome/Notebook.jpg"
	}, {
		"imageID" : 3,
		"title" : "PC",
		"path" : "../../resources/images/serviziHome/PC.jpg"
	}, {
		"imageID" : 4,
		"title" : "MAC",
		"path" : "../../resources/images/serviziHome/Mac.jpg"
	}, {
		"imageID" : 5,
		"title" : "Stampanti",
		"path" : "../../resources/images/serviziHome/Stampanti.jpg"
	}, {
		"imageID" : 6,
		"title" : "LAN e WAN",
		"path" : "../../resources/images/serviziHome/LAN_WAN.jpg"
	} ];
		
} ]);