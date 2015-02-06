var pmInformaticaWebSiteAngular = angular.module('pmInformaticaWebSiteAngular',
		[ 'pmInformaticaWebSiteAngular.controllers',
				'pmInformaticaWebSiteAngular.services', 'ngRoute',
				'angular-growl', 'ngMap' ]);

angular.module('pmInformaticaWebSiteAngular.controllers', []);
angular.module('pmInformaticaWebSiteAngular.services', []);

pmInformaticaWebSiteAngular.config([ 'growlProvider', function(growlProvider) {
	growlProvider.globalTimeToLive({
		success : 5000,
		error : 10000,
		warning : 5000,
		info : 5000
	});
} ]);

pmInformaticaWebSiteAngular.config([
		'$routeProvider',
		function($routeProvider) {

			$routeProvider.when(
					'/servizi',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Serivizi.jsp'
					}).when(
					'/contatti',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Contatti.jsp'
					}).when(
					'/servizi',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Servizi.jsp'
					}).when(
					'/home',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Home.jsp'
					}).when(
					'/prenotazione',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Prenotazione.jsp'
					}).when(
					'/galleria',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Galleria.jsp'
					}).when(
					'/news',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/News.jsp'
					}).when(
					'/contenuti',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Contenuti.jsp'
					})
		} ]);
