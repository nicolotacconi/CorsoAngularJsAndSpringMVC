
<!DOCTYPE html>
<html>
	<!--<script	src="angular.min.js"></script> --> 
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script src="personApp.js"></script>
	<script src="personController.js"></script>
<body>

	<p>inserisci i nomi e ricerca</p>

	<div ng-app="myApp" ng-controller="personCtrl" >

		First Name: <input type="text" ng-model="firstName" placeholder= "Jhon"><br>
		Last Name: <input type="text" ng-model="lastName" placeholder= "Doe"><br> <br>
		Full Name: {{fullNameUpp()}}

		<button ng-click="aggiungiPersona();">Aggiungi</button>
	
			<br/>
		
		<table border="0" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					<td>
						<input type="text" size="30" maxlength="1000" ng-model= "stringaRicerca" />
						<input type="button" value="Cerca" ng-click="impostaFiltro()"; /> 
					</td>
				</tr>
			</tbody>
		</table>

		<br/>
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<th>nomi</th>	
			</tr>
			<tbody id="data">
				<tr	ng-repeat="x in persone | filter : filtro">
				<td>{{ x }}</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	



  
</body>
</html>

