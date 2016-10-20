<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="submit_direttive.js"></script>
<title>BasicController</title>
<style type="text/css">
.showesempi {
	border: 1px solid red;
	margin: 3px;
}
</style>
</head>
<body ng-app="corsoBaseAngular">

	<h2>DIRETTIVE CUSTOM</h2>

	<form ng-app="myApp" ng-controller="SubmitCtrl" name="myForm">


		<div class="showesempi">
			<h3>Esempio 1</h3>
			il div sottostante non è un pulsante, ma gli associo una direttiva
			(my-dom-directive) che:
			<ol>
				<li>sostituisce il contenuto del tag all'evento 'click'</li>
				<li>cambia lo stile del colore passandoci sopra col mouse</li>
			</ol>
			</br>
			<div my-dom-directive>Click Me!</div>
		</div>

		<div class="showesempi">
			<h3>Esempio 2</h3>
			<input type="text" ng-model="color" placeholder="Enter a color" />
			la direttiva hello-world viene utilizzata in due modi (restrict: 'AE' attributi e elemento)
			
			<div>hello-world come elemento:</div>
			<hello-world>ciao</hello-world>
			<div>hello-world come attributo:</div>
			<div hello-world>ciao</div>
		</div>


		<div class="showesempi">
			<h3>Esempio 3</h3>
			<h2>{{title}}</h2>

			<p>
				Username:<br> <input type="text" name="user" ng-model="user"
					required> <span style="color: red"
					ng-show="myForm.user.$dirty && myForm.user.$invalid"> <span
					ng-show="myForm.user.$error.required">Username is required.</span>
				</span>
			</p>

			<p>
				Email:<br> <input type="email" name="email" ng-model="email"
					required> <span style="color: red"
					ng-show="myForm.email.$dirty && myForm.email.$invalid"> <span
					ng-show="myForm.email.$error.required">Email is required.</span> <span
					ng-show="myForm.email.$error.email">Invalid email address.</span>
				</span>
			</p>

			<p>
				<input type="submit" ng-click="iscrizione()"
					ng-disabled="myForm.user.$dirty && myForm.user.$invalid ||  
myForm.email.$dirty && myForm.email.$invalid">


			</p>



			<span ng-show="myForm.$submitted ">form submitted</span> <br>

			<div ng-show="iscritto" ng-click="reset()">
				<!-- <h4>Welcome {{user}} - {{email}}</h4> -->
				Per mostrare la riga di benvenuto, uso un nuovo elemento 
				<my-customer user-name="user">Ben arrivato: </my-customer>   
				<br> <strong> CLICK ME TO CLOSE</strong>
			</div>

		</div>
	</form>




</body>
</html>