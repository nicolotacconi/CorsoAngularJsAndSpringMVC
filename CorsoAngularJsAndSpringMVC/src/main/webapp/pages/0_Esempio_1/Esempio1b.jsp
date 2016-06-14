
<!DOCTYPE html>
<html>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>

	<p>Try to change the names. Controller with function</p>

	<div ng-app="myApp" ng-controller="personCtrl">

		First Name: <input type="text" ng-model="firstName"><br>
		Last Name: <input type="text" ng-model="lastName"><br> <br>
		Full Name: {{fullNameUpp()}}

	</div>

	<script>
		var app = angular.module('myApp', []);
		app.controller('personCtrl', function($scope) {
			$scope.firstName = "John";
			$scope.lastName = "Doe";
			$scope.fullNameUpp = function() {
				return $scope.firstName.toUpperCase() + " " + $scope.lastName.toUpperCase();
			};
		});
	</script>



</body>
</html>

