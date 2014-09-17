<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function SimpleToDo($scope) {
		$scope.items = [];

		$scope.addItem = function() {
			$scope.items.push($scope.item);
			$scope.item = '';
		}

		$scope.remove = function(idx) {
			$scope.items.splice(idx, 1);
		}
	}
</script>
</head>

<body>
	<jsp:include page="../layout/navbar.jsp" />
	<div class="container" ng-controller="SimpleToDo">
		<h1>Simple todolist</h1>
		<div>
			<label>Item:</label>
			<form ng-submit="addItem()">
				<input type="text" ng-model="item" placeholder="Enter an item">
			</form>
		</div>
		<ul>
			<li ng-repeat="i in items" ng-click="remove($index)">{{i}}</li>
		</ul>
		<hr>
	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>