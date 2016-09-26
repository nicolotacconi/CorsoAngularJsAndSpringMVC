<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="validazione.js"></script>
<title>BasicController</title>
</head>
<body ng-app="corsoBaseAngular">

	<h2>Validation Example</h2>

	<form ng-app="myApp" ng-controller="ValidazioneCtrl" name="myForm"
		>

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
			<input type="submit"
				ng-disabled="myForm.user.$dirty && myForm.user.$invalid ||  
myForm.email.$dirty && myForm.email.$invalid">
		</p>
		 proprietà campo Username:
		 <span ng-show="myForm.user.$touched">campo Username perso focus (touched)</span><br>
		 <span ng-show="myForm.user.$untouched">campo Username mai perso focus da questo campo (untouched)</span><br>
		 <span ng-show="myForm.user.$pristine">campo Username non modificato dall'utente (pristine)</span> <br>
		 <span ng-show="myForm.user.$dirty">campo Username modificato dall'utente (dirty)</span> <br>
		  
		  <br>
		  proprietà form:
		  <span ng-show="myForm.$submitted ">form submitted</span><br>
		 <span ng-show="myForm.$valid">form valida (valid)</span> <br>
		 <span ng-show="myForm.$invalid">form non valida (invalid)</span> <br>
		 <span ng-show="myForm.$pristine">form non modificata dall'utente (pristine)</span> <br>
		 <span ng-show="myForm.$dirty">form modificata dall'utente (dirty)</span> <br>
		</span>

	</form>

</body>
</html>