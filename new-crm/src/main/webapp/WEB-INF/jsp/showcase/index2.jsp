<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="en" ng-app>
<jsp:include page="../fragments/headTag.jsp" />
<script type="text/javascript">
	function PageController($scope, $http) {

	}
</script>
<style>
.colored1 {
	background-color: red;
	transition: background-color 1s;
}

.colored1:hover {
	background-color: green;
}

.colored2 {
	background-color: yellow;
	transition: background-color 1s;
}

.colored2.highlighted {
	background-color: purple;
}

.toggeable {
	transition: width 0.4s
}

.toggeable.compact {
	width: 0px
}

.outable {
	position: relative;
	transition: left 0.6s;
}

.outable.out {
	position: absolute;
	left: -500px
}
</style>
<body ng-controller="PageController">
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid">
		<div class="span4 colored1">div1</div>
		<div class="span4 colored1 highlighted">div2</div>
		<div class="span2 colored2">dive</div>
		<div class="span2 colored2" ng-class="{highlighted : active}">
			<button type="button" class="btn" ng-click="active = !active">Default</button>
		</div>
	</div>
	<hr />
	<button type="button" class="btn" ng-click="compact = !compact">Default</button>
	<div class="container-fluid">
		<div class="span4 toggeable" ng-class="{compact : compact}">
			<div class="well">asdkjfh ahsdkjf has hd</div>
		</div>
		<div class="span4">div2</div>
		<div class="span4">dive</div>
	</div>
	<hr />
	<button type="button" class="btn" ng-click="out = !out">Default</button>
	<div class="container-fluid">
		<div class="span4 outable" ng-class="{out : out}">
			<div class="well">asdkjfh ahsdkjf has hd</div>
		</div>
		<div class="span4">div2</div>
		<div class="span4">dive</div>
		<div class="span4">dive</div>
		<div class="span4">dive</div>
	</div>
	<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
