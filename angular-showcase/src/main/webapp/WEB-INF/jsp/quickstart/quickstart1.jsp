<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
</head>

<body>
	<jsp:include page="../layout/navbar.jsp" />
	<div class="container">
		<h1>Simple binding: {{yourName}}</h1>
		<div>
			<label>Name:</label> <input type="text" ng-model="yourName"
				placeholder="Enter a name here">
		</div>
		<hr>
	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>