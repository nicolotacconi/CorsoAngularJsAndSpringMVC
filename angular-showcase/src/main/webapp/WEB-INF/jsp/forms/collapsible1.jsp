<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function FormsController($scope, $http) {
		$scope.closed = false;
		
		$scope.toggle = function() {
			$scope.closed = !$scope.closed; 
		}
	}
</script>
<style type="text/css">
.bordered {
	border: 1px solid black;
}
</style>
</head>

<body>
	<jsp:include page="../layout/navbar.jsp" />
	<div class="container" ng-controller="FormsController">
		<h1>Forms</h1>
		<i class="icon-plus" ng-show="closed == true"
			ng-click="toggle()"></i><i class="icon-minus"
			ng-show="closed == false"
			ng-click="toggle()"></i>
		<div ng-show="!closed">Blah blah blah</div>

	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>