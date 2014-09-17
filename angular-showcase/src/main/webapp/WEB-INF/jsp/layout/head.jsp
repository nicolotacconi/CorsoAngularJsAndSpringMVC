<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Spring MVC sample</title>

	<style>
		body {
			padding-top: 60px;
			/* 60px to make the container go all the way to the bottom of the topbar */
		}
	</style>

<spring:url value="/webjars/bootstrap/2.3.2/css/bootstrap.min.css" var="bootstrapCss"/>
<link href="${bootstrapCss}" rel="stylesheet" media="screen">

<spring:url value="/webjars/bootstrap/2.3.2/css/bootstrap-responsive.min.css" var="bootstrapResponsiveCss"/>
<link href="${bootstrapResponsiveCss}" rel="stylesheet" media="screen">

<spring:url value="/webjars/jquery/1.9.0/jquery.min.js" var="jqueryJs"/>
<script src="${jqueryJs}"></script>

<spring:url value="/webjars/bootstrap/2.3.2/js/bootstrap.min.js" var="bootstrapMinJs"/>
<script src="${bootstrapMinJs}"></script>

<spring:url value="/webjars/angularjs/1.1.5/angular.min.js" var="angularjsJs"/>
<script src="${angularjsJs}"></script>

<spring:url value="/webjars/angularjs/1.1.5/angular-resource.min.js" var="angularResourceJs"/>
<script src="${angularResourceJs}"></script>
