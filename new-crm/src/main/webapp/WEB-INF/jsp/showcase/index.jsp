<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="en" ng-app>
<jsp:include page="../fragments/headTag.jsp" />
<script type="text/javascript">
	function TabsController($scope, $http) {

		$scope.tabs = [ {
			id : 'tab1',
			title : 'Tab 1',
			active : true,
			content : 'content of tab1'
		}, {
			id : 'tab2',
			title : 'Tab 2',
			active : false,
			content : 'content of tab2'
		} ];

		$scope.addTab = function() {
			for ( var i = 0; i < $scope.tabs.length; i++) {
				$scope.tabs[i].active = false;
			}
			$scope.tabs.push({
				id : 'tab' + ($scope.tabs.length + 1),
				title : 'Tab ' + ($scope.tabs.length + 1),
				active : true,
				content : 'content of tab' + ($scope.tabs.length + 1)
			});
		}

		$scope.removeTab = function() {
			if ($scope.tabs[$scope.tabs.length - 1].active) {
				$scope.tabs[$scope.tabs.length - 2].active = true;
			}
			$scope.tabs.splice($scope.tabs.length - 1, 1);
		}

		$scope.selectTab = function(id) {
			for ( var i = 0; i < $scope.tabs.length; i++) {
				if (id == $scope.tabs[i].id)
					$scope.tabs[i].active = true;
				else
					$scope.tabs[i].active = false;
			}
		}

	}
	function NgIncludesController($scope, $http) {
		$scope.views = [ {
			id : 'view1',
			title : 'View 1',
			template : 'template-view'
		}, {
			id : 'view2',
			title : 'View 2',
			template : 'template-list'
		} ];
		$scope.addList = function() {
			$scope.views.push({
				id : 'view' + ($scope.views.length + 1),
				title : 'View ' + ($scope.views.length + 1),
				template : 'template-list'
			});
		}
		$scope.addView = function() {
			$scope.views.push({
				id : 'view' + ($scope.views.length + 1),
				title : 'View ' + ($scope.views.length + 1),
				template : 'template-view'
			});
		}
	}
</script>
<body>
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span1">
				<h1>Tabs</h1>
			</div>
			<div class="span11" ng-controller="TabsController">
				<ul class="nav nav-tabs">
					<li ng-class="{active : tab.active}" ng-repeat="tab in tabs"><a
						href="{{'#'+tab.id}}" data-toggle="tab"
						ng-click="selectTab(tab.id)">{{tab.title}}</a></li>
					<li><a href="#home" data-toggle="tab">Home</a></li>
					<li><a href="#profile" data-toggle="tab">Profile</a></li>
					<li><a href="#messages" data-toggle="tab">Messages</a></li>
					<li><a href="#settings" data-toggle="tab">Settings</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" ng-class="{active : tab.active}"
						id="{{tab.id}}" ng-repeat="tab in tabs">{{tab.content}}</div>
					<div class="tab-pane" id="home">home</div>
					<div class="tab-pane" id="profile">profile</div>
					<div class="tab-pane" id="messages">messages</div>
					<div class="tab-pane" id="settings">setting</div>
				</div>

				<button class="btn btn-danger" type="button" ng-click="removeTab()">Remove</button>
				<button class="btn btn-primary" type="button" ng-click="addTab()">Add</button>

			</div>
		</div>
		<div class="row-fluid">
			<div class="span1">
				<h1>Ng includes</h1>
			</div>
			<div class="span11" ng-controller="NgIncludesController">
				<div ng-repeat="view in views">
					<div class="well">
						<div ng-include="view.template"></div>
					</div>
				</div>
				<button class="btn btn-primary" type="button" ng-click="addList()">Add
					Elenco</button>
				<button class="btn btn-primary" type="button" ng-click="addView()">Add
					View</button>
			</div>
		</div>
		<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
