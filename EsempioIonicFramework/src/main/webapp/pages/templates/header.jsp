<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">

<spring:url value="/webjars/" var="webjarsPath" />

<!-- INCLUDO LE LIBRERIE BASE DI ANGULAR -->
<script src="${webjarsPath}angularjs/1.2.16/angular.min.js"></script>
<script
	src="${webjarsPath}angularjs/1.2.16/i18n/angular-locale_it-it.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-resource.min.js"></script>


<!-- INCLUDO LE LIBRERIE IONIC -->
<link
	href="${pageContext.request.contextPath}/webjars/ionic/1.1.0/css/ionic.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/webjars/ionic/1.1.0/js/ionic.bundle.js"></script>

<!-- INCLUDO I SERVIZI E I CONTROLLER JAVASCRIPT -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/app.js">
	
</script>


