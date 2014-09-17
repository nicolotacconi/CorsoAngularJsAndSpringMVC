<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function FormsController($scope, $http) {
		$scope.required = function() {
			return ($scope.telefono == null || $scope.telefono == '') && 
				($scope.cellulare == null || $scope.cellulare == '');
		}
	}
</script>
<style type="text/css">
.required {
	background-color: yellow !important;
}
</style>
</head>

<body>
	<jsp:include page="../layout/navbar.jsp" />
	<div class="container" ng-controller="FormsController">
		<h1>Forms</h1>
		<label>Telefono</label> 
		<input type="text" ng-model="telefono" ng-class="{required:required()}" />
		<label>Cellulare</label>
		<input type="text" ng-model="cellulare" ng-class="{required:required()}" />

	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>