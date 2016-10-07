<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="submit_promisesAll.js"></script>
<title>BasicController</title>
</head>
<body ng-app="corsoBaseAngular">

	<h2>Submit</h2>

	<form ng-app="myApp" ng-controller="SubmitPromisesCtrl" name="myForm"> 

	

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

		<span ng-show="myForm.$submitted ">form submitted</span><br>

		<div ng-show="iscritto"  ng-click="reset()">
			<h4 g-show="output">Welcome {{user}} - {{email}}</h4>
			<strong> CLICK ME TO CLOSE</strong>
		</div>
		
		<span ng-show="output">Result: {{output}}</span>
	</form>

</body>
</html>