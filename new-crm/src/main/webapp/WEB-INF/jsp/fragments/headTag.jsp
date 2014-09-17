<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Spring MVC sample</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		body {
			padding-top: 60px;
			/* 60px to make the container go all the way to the bottom of the topbar */
		}
		
		.attivita .container-fluid input {
		width: 100%;
 		padding: 4px 0 4px 0 !important; 
		}
		.attivita .container-fluid textarea {
		width: 100%;
		padding: 4px 0 4px 0 !important;
		}
		
	</style>
	<!-- Bootstrap -->
    <spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrapCss"/>
	<link href="${bootstrapCss}" rel="stylesheet" media="screen">
	
    <spring:url value="/resources/bootstrap/css/bootstrap-responsive.min.css" var="bootstrapResponsiveCss"/>
	<link href="${bootstrapResponsiveCss}" rel="stylesheet">

    <spring:url value="/webjars/angularjs/1.1.4/angular.min.js" var="angularjs"/>
    <script src="${angularjs}"></script>

    <spring:url value="/webjars/angularjs/1.1.4/angular-resource.min.js" var="angularresourcejs"/>
    <script src="${angularresourcejs}"></script>
<style type="text/css">

		.well-small {
			padding: 4px;
		}
</style>
</head>