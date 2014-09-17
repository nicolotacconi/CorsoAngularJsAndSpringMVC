<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function FormsController($scope, $http) {

		$scope.items = [ {
			codice : "xyz",
			label : "blah blah",
			amount : 45
		}, {
			codice : "abc",
			label : "beh beh",
			amount : 0
		}, {
			codice : "aaa",
			label : "weu weu",
			amount : 99
		}, {
			codice : "org",
			label : "hu hu",
			amount : 11
		}, {
			codice : "uau",
			label : "xyz",
			amount : 55
		}, {
			codice : "ttt",
			label : "hjfd",
			amount : 1
		} ];

		$scope.field = null;
		$scope.reverse = false;

		$scope.sortBy = function(field) {
			if ($scope.field == field) {
				$scope.reverse = !$scope.reverse;
			} else {
				$scope.reverse = false;
			}
			$scope.field = field;

			$scope.items.sort(function(a, b) {
				return $scope.compare(a[$scope.field], b[$scope.field])
						* ($scope.reverse ? -1 : 1);
			});
		}

		$scope.compare = function(a, b) {
			return (a < b) ? -1 : ((a > b) ? 1 : 0);
		}

		$scope.duplicateRow = function(index) {
			console.log(index)
			$scope.items.push({
				codice : $scope.items[index].codice,
				label : $scope.items[index].label,
				amount : $scope.items[index].amount
			});
			$scope.items.sort(function(a, b) {
				return $scope.compare(a[$scope.field], b[$scope.field])
						* ($scope.reverse ? -1 : 1);
			});
		}

		$scope.removeRow = function(index) {
			$scope.items.splice(index, 1);
		}

		$scope.sum = function() {
			var sum = 0;
			for ( var i = 0; i < $scope.items.length; i++) {
				sum += $scope.items[i].amount;
			}
			return sum;
		}
	}
</script>
</head>

<body>
	<jsp:include page="../layout/navbar.jsp" />
	<div class="container" ng-controller="FormsController">
		<h1>Forms</h1>
		<table class="table table-striped table-hover">
			<thead>
				<th ng-click="sortBy('codice')">codice</th>
				<th ng-click="sortBy('label')">label</th>
				<th ng-click="sortBy('amount')">amount</th>
				<th></th>
			</thead>
			<tr ng-repeat="item in items">
				<td>{{item.codice}}</td>
				<td>{{item.label}}</td>
				<td>{{item.amount}}</td>
				<td>
					<button class="btn btn-link btn-small" type="button"
						ng-click="removeRow($index)">DEL</button>
					<button class="btn btn-success btn-small" type="submit"
						ng-click="duplicateRow($index)">ADD</button>
				</td>
			</tr>
			<tr class="success">
				<td>---</td>
				<td>---</td>
				<td>{{sum()}}</td>
				<td></td>
			</tr>
		</table>

	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>