<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<spring:url value="/webjars/" var="webjarsPath" />

<!-- INCLUDO LE LIBRERIE BASE DI ANGULAR -->
<script src="${webjarsPath}angularjs/1.2.16/angular.min.js"></script>
<script
	src="${webjarsPath}angularjs/1.2.16/i18n/angular-locale_it-it.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-resource.min.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-route.min.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-animate.min.js"></script>

<!-- INCLUDO LE LIBRERIE BASE DI BOOTSTRAP -->
<link
	href="${pageContext.request.contextPath}/webjars/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/webjars/angular-ui-bootstrap/0.11.0/ui-bootstrap.min.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/webjars/angular-ui-bootstrap/0.11.0/ui-bootstrap-tpls.min.js"
	charset="UTF-8"></script>

<!-- INCLUDO I SERVIZI E I CONTROLLER JAVASCRIPT -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/HelloWorld/HelloWorldService.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/PrimoForm/PrimoFormService.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/CostruttiBase/CostruttiBaseService.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Modal/ModalService.js"></script>


<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/HelloWorld/HelloWorldController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/PrimoForm/PrimoFormController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/CostruttiBase/CostruttiBaseController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Modal/ModalController.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/Watch/WatchController.js"></script>



<script type="text/javascript">
	INTRANET_ANGULAR = angular.extend(typeof MFA === 'undefined' ? {} : MFA, {
		contextPath : '<spring:url value="/" />'
	});
</script>


