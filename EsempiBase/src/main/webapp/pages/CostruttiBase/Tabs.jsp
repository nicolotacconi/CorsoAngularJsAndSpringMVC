<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Costrutti Base</title>
</head>

<body ng-app="intranetAngular" ng-controller="TabsController">
	<jsp:include page="../templates/header.jsp" />
	<b>TABS</b>

	<div>

		<div>

			<a ng-click="selectedTab = 'Tab1'">Tab1</a> <a
				ng-click="selectedTab = 'Tab2'">Tab2</a>
		</div>


		<ul ng-show="selectedTab == 'Tab1'">{{testoTab1}}
		</ul>


		<ul ng-show="selectedTab == 'Tab2'">{{testoTab2}}
		</ul>
	</div>

</body>
</html>