<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../template/header.jsp" />
<script type="text/javascript" src="DataBindingController.js"></script>
<title>DataBinding</title>
</head>
<body >

	<div ng-app>
    <h2>Binding Example</h2>

    <h4>Who are you: {{username}}</h4>

    <input type="text" ng-model="username" 
           class="form-control"
           placeholder="Your first name here...">

    <input type="text" ng-model="username" 
           class="form-control"
           placeholder="... or here">
    
    <h2 ng-show="username === 'mario'">
      Hey Mario! What are you doing?
    </h2>
</div>

</body>
</html>