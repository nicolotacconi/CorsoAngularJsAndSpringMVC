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

		$scope.reverse = false;
		$scope.field = null;

		$scope.sortBy = function(field) {
			if ($scope.field == field) {
				$scope.reverse = !$scope.reverse;
			} else {
				$scope.reverse = false;
			}
			$scope.field = field;
		}

		$scope.duplicateRow = function(item) {
			$scope.items.push({
				codice : item.codice,
				label : item.label,
				amount : item.amount
			});

		}

		$scope.removeRow = function(item) {
			$scope.items.splice($scope.items.indexOf(item), 1);
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
			<tr ng-repeat="item in items | orderBy : field : reverse">
				<td>{{item.codice}}</td>
				<td>{{item.label}}</td>
				<td>{{item.amount}}</td>
				<td>
					<button class="btn btn-link btn-small" type="button"
						ng-click="removeRow(item)">DEL</button>
					<button class="btn btn-success btn-small" type="submit"
						ng-click="duplicateRow(item)">ADD</button>
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