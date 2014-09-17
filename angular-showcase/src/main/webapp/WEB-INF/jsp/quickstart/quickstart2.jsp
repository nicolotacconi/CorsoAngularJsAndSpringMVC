<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function SimpleController($scope) {
		$scope.myVar = 'hello';

		$scope.visible = function() {
			return $scope.yourName;
		}
	}
</script>
<style type="text/css">
.highlight {
	color: purple;
	font-style: italic;
}
</style>
</head>

<body>
	<jsp:include page="../layout/navbar.jsp" />
	<div class="container" ng-controller="SimpleController">
		<h1>Scopes</h1>
		<div class="alert" ng-show="yourName.length > 10">
			<strong>Attenzione!</strong> nome troppo lungo!
		</div>
		<div>
			<label>Name:</label> <input type="text" ng-model="yourName"
				placeholder="Enter a name here">
		</div>
		<div ng-show="visible()" ng-class="{highlight: yourName == 'daniele'}">{{myVar}}:
			{{yourName}}</div>
		<hr>
	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>