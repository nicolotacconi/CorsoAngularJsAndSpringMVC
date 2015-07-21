<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Growl</title>
</head>

<body ng-app="extensionLibraries" ng-controller="GrowlController">
	<jsp:include page="header.jsp" />

	<button type="submit" value="Messaggio Info" ng-click="pubblicaInfo()">Messaggio
		Info</button>

	<button type="submit" value="Messaggio Errore"
		ng-click="pubblicaError()">Messaggio Errore</button>

	<div growl></div>

</body>
</html>