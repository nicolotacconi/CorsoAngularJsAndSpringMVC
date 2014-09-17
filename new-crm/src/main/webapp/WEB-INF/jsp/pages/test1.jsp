<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="en" ng-app>
<jsp:include page="../fragments/headTag.jsp" />
<script type="text/javascript">
	function PageController($scope, $http) {
		$scope.attivita = {};
		$scope.attivitaSelected = null;

		$scope.cliente = {
			nome : 'Mario',
			cognome : 'Rossi',
			polizze : [ {
				numero : 12345,
				prodotto : 'SOLO UNA'
			}, {
				numero : 45678,
				prodotto : 'TUTTO TONDO'
			} ]
		};

		$scope.menu = [ {
			active : false
		}, {
			active : false
		}, {
			active : false
		} ];

		$scope.mieAttivita = function() {
			$http.get('../attivita/mylistasjson').success(function(data) {
				$scope.attivita = data;
			});
		};

		$scope.recentiAttivita = function() {
			$http.get('../attivita/my-recenti').success(function(data) {
				$scope.attivita = data;
			});
		};

		$scope.tutteAttivita = function() {
			$scope.attivita = {};
		};

		$scope.selectMenu = function(idx) {
			angular.forEach($scope.menu, function(value, key) {
				value.active = false;
			});
			$scope.menu[idx].active = true;
		}

		$scope.selectAttivita = function(attivita) {
			$scope.attivitaSelected = attivita;
		}

	}
</script>
<body ng-controller="PageController">
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span5">
				<div id="message">SUCCESS</div>

				<a href="test2" id="link">go to test2</a>
				
				<div onclick="window.location.href = 'test2'" id="fake-link">click me</div>

			</div>
			<div class="span7"></div>
		</div>
	</div>
	<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
