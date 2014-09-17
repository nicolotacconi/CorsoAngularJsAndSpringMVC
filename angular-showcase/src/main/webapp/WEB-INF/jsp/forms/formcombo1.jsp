<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function FormsController($scope, $http) {
		$scope.combo1 = JSON.parse(sessionStorage.getItem("combo1"));
		if ($scope.combo1 == null) {
			$http.get('combo1').success(
					function(data) {
						$scope.combo1 = data;
						sessionStorage.setItem("combo1", JSON
								.stringify($scope.combo1));
					});
		}

		$scope.selectMe = function() {
			if ($scope.value1 != null && $scope.value1 != '') {
				$scope.combo2 = JSON.parse(sessionStorage.getItem("combo2"+$scope.value1));
				if ($scope.combo2 == null) {
					$http.get('combo2', {
						params : {
							value1 : $scope.value1
						}
					}).success(
							function(data) {
								$scope.combo2 = data;
								sessionStorage.setItem("combo2"+$scope.value1, JSON
										.stringify($scope.combo2));
							});
				}
			} else {
				$scope.combo2 = [];
			}
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
		<select ng-model="value1" ng-change="selectMe()">
			<option value="">-</option>
			<option ng-repeat="v in combo1" value="{{v}}">{{v}}</option>
		</select> <select ng-disabled="value1 == null || value1 == ''">
			<option ng-repeat="v in combo2" value="{{v}}">{{v}}</option>
		</select>

	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>