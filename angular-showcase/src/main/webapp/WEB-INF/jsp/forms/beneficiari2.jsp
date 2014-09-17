<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function FormsController($scope, $http) {
		$scope.regole = [ {
			id : 0,
			hidden : false,
			readonly : true
		}, {
			id : 1,
			hidden : true,
			readonly : false
		}, {
			id : 2,
			hidden : true,
			readonly : false
		}, {
			id : 3,
			hidden : true,
			readonly : false
		} ];

		$scope.showRimuovi = function(index, regola) {
			return index != 0 && !regola.readonly;
		}

		$scope.showAggiungi = function(index) {
			return index + 1 < $scope.regole.length
					&& $scope.regole[index + 1].hidden;
		}

		$scope.aggiungi = function(index) {
			$scope.regole[index + 1].hidden = false;
		}

		$scope.rimuovi = function(index) {
			for (var i = index; i < $scope.regole.length - 1; i++) {
				$scope.regole[i].valore = $scope.regole[i + 1].valore;
			}
			$scope.regole[$scope.regole.length - 1].valore = null;
			$scope.ultimaRegolaVisibile().hidden = true;
		}
		
		$scope.ultimaRegolaVisibile = function() {
			for (var i = $scope.regole.length -1; i >= 0 ; i--) {
				if (!$scope.regole[i].hidden) {
					return $scope.regole[i];
				}
			}
			return null;
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
		<div ng-repeat="regola in regole" ng-show="!regola.hidden">
			{{$index + 1}} <input ng-readonly="regola.readonly" ng-model="regola.valore">
			<button class="btn btn-link btn-small" type="button"
				ng-click="rimuovi($index)" ng-show="showRimuovi($index, regola)">RIMUOVI</button>
			<button class="btn btn-success btn-small" type="button"
				ng-click="aggiungi($index)" ng-show="showAggiungi($index, regola)">AGGIUNGI</button>
		</div>

	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>