<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<spring:url value="/webjars/" var="webjarsPath" />

<script src="${webjarsPath}angularjs/1.2.16/angular.min.js"></script>
<script
	src="${webjarsPath}angularjs/1.2.16/i18n/angular-locale_it-it.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-resource.min.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-route.min.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-animate.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/services/HelloWorldService.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/controllers/HelloWorldController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/app.js"></script>


<script type="text/javascript">
	INTRANET_ANGULAR = angular.extend(typeof MFA === 'undefined' ? {} : MFA, {
		contextPath : '<spring:url value="/" />'
	});
</script>


