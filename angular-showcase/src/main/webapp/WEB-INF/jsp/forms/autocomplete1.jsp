<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function FormsController($scope, $http) {
		$('.typeahead').typeahead();
		$scope.search = function() {
			console.log('search:' + $scope.value);
			$http.get('search', {
				params : {
					search : $scope.value
				}
			}).success(function(data) {
				console.log(data)
				//				$('.typeahead').typeahead({
				//					source : data
				//				});
				//				$scope.autocomplete = data;
			});

		}

	}
</script>
</head>

<body>
	<jsp:include page="../layout/navbar.jsp" />
	<div class="container" ng-controller="FormsController">
		<h1>Forms</h1>
		<input type="text" class="span3 typeahead" style="margin: 0 auto;"
			data-provide="typeahead" ng-model="value" data-items="4"
			ng-change="search()">
	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>