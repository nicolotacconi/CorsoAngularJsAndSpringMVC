
<!DOCTYPE html>
<html>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script src="personApp.js"></script>
	<script src="personController.js"></script>
<body>

	<p>Try to change the names. Controller with function in external file</p>

	<div ng-app="myApp" ng-controller="personCtrl">

		First Name: <input type="text" ng-model="firstName"><br>
		Last Name: <input type="text" ng-model="lastName"><br> <br>
		Full Name: {{fullNameUpp()}}

	</div>

	<!-- il controller definito come script prima, importato -->



</body>
</html>

