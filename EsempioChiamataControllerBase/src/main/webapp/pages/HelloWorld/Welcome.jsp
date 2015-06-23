<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>MyFirstWebApplication</title>
</head>

<body ng-app="intranetAngular" ng-controller="HelloWorldController">
	<jsp:include page="../templates/header.jsp" />
	<h2>Hello World!</h2>

	<table>

		<tr>

			<td><strong ng-bind="message"></strong></td>
			<td><button class="btn" type="button" ng-click="setMessage()">Set
					Message</button></td>
		</tr>

		<tr>

			<td>{{messageObj.messaggioDiBenvenuto}}</td>
			<td><button class="btn" type="button" ng-click="setMessageObj()">
					Message OBJ</button></td>
		</tr>
		
		
		<tr>

			<td><strong ng-bind="messagePromise"></td>
			<td><button class="btn" type="button" ng-click="setMessagePromise()">
					Message Promise</button></td>
		</tr>
	</table>

</body>
</html>