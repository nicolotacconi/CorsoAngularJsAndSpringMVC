<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>MyFirstWebApplication</title>
</head>

<body ng-app="intranetAngular" ng-controller="HelloWorldController">
	<jsp:include page="../templates/header.jsp" />
	<h2>Hello World!</h2>

	{{message}}

	<button type="button" ng-click="setMessage()" >Set Message</button>
</body>
</html>