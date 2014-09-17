<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>MyFirstWebApplication</title>
<spring:url value="/webjars/" var="webjarsPath" />
<spring:url value="/resources/" var="resourcesPath" />



<script src="${webjarsPath}angularjs/1.2.16/angular.min.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/i18n/angular-locale_it-it.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-resource.min.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-route.min.js"></script>
<script src="${webjarsPath}angularjs/1.2.16/angular-animate.min.js"></script>

<script type="text/javascript">
	MFA = angular.extend(typeof MFA === 'undefined' ? {} : MFA, {
		contextPath : '<spring:url value="/" />'
	});
</script>

<script type="text/javascript" src="${resourcesPath}angular/app.js" charset="UTF-8"></script>
<script type="text/javascript" src="${resourcesPath}angular/services.js" charset="UTF-8"></script>
<script type="text/javascript" src="${resourcesPath}angular/controllers.js" charset="UTF-8"></script>

</head>

<body ng-app="myFstApp" ng-controller="applicazioniController">
	<h2>Hello World!</h2>
	
  <table>
    <thead>
      <tr><th colspan="4">Applicazioni</th></tr>
    </thead>
    <tbody>
      <tr ng-repeat="applicazione in applicazioniList">
        <td>{{applicazione.nome}}</td>
      </tr>
    </tbody>
  </table>	
	
</body>
</html>
