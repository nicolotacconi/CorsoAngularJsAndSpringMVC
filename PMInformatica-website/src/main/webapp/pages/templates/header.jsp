<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="initial-scale=1.0, user-scalable=no, width=device-width" />

<spring:url value="/webjars/" var="webjarsPath" />

<!-- INCLUDO LE LIBRERIE BASE DI ANGULAR -->
<script src="${webjarsPath}angularjs/1.4.2/angular.min.js"></script>
<script src="${webjarsPath}angularjs/1.4.2/i18n/angular-locale_it-it.js"></script>
<script src="${webjarsPath}angularjs/1.4.2/angular-resource.min.js"></script>
<script src="${webjarsPath}angularjs/1.4.2/angular-route.min.js"></script>
<script src="${webjarsPath}angularjs/1.4.2/angular-animate.min.js"></script>

<!-- INCLUDO LE LIBRERIE BASE DI BOOTSTRAP -->
<link
	href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/Style.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/webjars/bootstrap/3.3.5/js/bootstrap.min.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/webjars/angular-ui-bootstrap/0.13.1/ui-bootstrap.min.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/webjars/angular-ui-bootstrap/0.13.1/ui-bootstrap-tpls.min.js"
	charset="UTF-8"></script>

<!-- INCLUDO I SERVIZI E I CONTROLLER JAVASCRIPT -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Home/MenuController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Login/LoginController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Prenotazione/PrenotazioneController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Galleria/GalleriaController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Offerte/OfferteController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Home/HomeController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Home/DeviceController.js"></script>

<!-- INCLUDO I SERVICE -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Login/LoginService.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Prenotazione/PrenotazioneService.js"></script>

<!-- JQUERY -->
<script
	src="${pageContext.request.contextPath}/webjars/jquery/1.11.1/jquery.min.js"></script>

<!-- INCLUDO GROWL -->
<link
	href="${pageContext.request.contextPath}/webjars/angular-growl-2/0.6.0/angular-growl.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/webjars/angular-growl-2/0.6.0/angular-growl.js"></script>
<script
	src="${pageContext.request.contextPath}/webjars/angular-growl-2/0.6.0/angular-growl.min.js"></script>

<script type="text/javascript">
	PM_INFORMATICA_WEBSITE = angular.extend(typeof MFA === 'undefined' ? {}
			: MFA, {
		contextPath : '<spring:url value="/" />'
	});
</script>

<!-- MAPS -->
<script src="//maps.google.com/maps/api/js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/utils/googleMaps.js"></script>