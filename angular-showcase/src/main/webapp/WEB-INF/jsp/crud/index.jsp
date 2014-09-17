<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function ToDoController($scope, $http) {

		$scope.init = function() {
			$scope.load();
			$scope.content = "crud/list-page";
		}

		$scope.load = function() {
			$http.get("crud/list").success(function(data) {
				$scope.todos = data;
			});
		}

		$scope.nuovo = function() {
			$scope.content = "crud/new-page";
		}

		$scope.annulla = function() {
			$scope.errors = [];
			$scope.content = "crud/list-page";
		}

		$scope.salva = function(todo) {
			$http.get('crud/save', {
				params : todo
			}).success(function(data) {
				if (data.error) {
					console.log(data.errors)
					$scope.errors = data.errors;
					console.log($scope.hasErrors())
				} else {
					$scope.content = "crud/list-page";
					$scope.load();
				}
			});
		}

		$scope.elimina = function(todo) {
			$http.get('crud/delete', {
				params : todo
			}).success(function(data) {
				if (data.error) {
					$scope.errors = data.errors;
				} else {
					$scope.load();
				}
			});
		}

		$scope.readonly = function(todo) {
			$http.get('crud/setreadonly', {
				params : todo
			}).success(function(data) {
				if (data.error) {
					$scope.errors = data.errors;
				} else {
					$scope.load();
				}
			});
		}

		$scope.hasErrors = function() {
			return $scope.errors != null && $scope.errors.length > 0;
		}
	}
</script>
</head>

<body>
	<jsp:include page="../layout/navbar.jsp" />
	<div class="container" ng-controller="ToDoController" ng-init="init()">
		<h1>Todos</h1>
		<div class="alert alert-error" ng-show="hasErrors()">
			<div ng-repeat="error in errors">{{error}}</div>
		</div>
		<div ng-include="content"></div>
	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>