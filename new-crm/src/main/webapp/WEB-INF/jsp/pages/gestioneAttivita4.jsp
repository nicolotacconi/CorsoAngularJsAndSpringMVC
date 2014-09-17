<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="en" ng-app>
<jsp:include page="../fragments/headTag.jsp" />
<script type="text/javascript">
	function PageController($scope, $http) {
		$scope.attivita = {};
		$scope.attivitaSelected = null;

		$scope.cliente = {
			nome : 'Mario',
			cognome : 'Rossi',
			polizze : [ {
				numero : 12345,
				prodotto : 'SOLO UNA'
			}, {
				numero : 45678,
				prodotto : 'TUTTO TONDO'
			} ]
		};

		$scope.menu = [ {
			active : false
		}, {
			active : false
		}, {
			active : false
		} ];

		$scope.mieAttivita = function() {
			$http.get('../attivita/mylistasjson').success(function(data) {
				$scope.attivita = data;
			});
		};

		$scope.recentiAttivita = function() {
			$http.get('../attivita/my-recenti').success(function(data) {
				$scope.attivita = data;
			});
		};

		$scope.tutteAttivita = function() {
			$scope.attivita = {};
		};

		$scope.selectMenu = function(idx) {
			angular.forEach($scope.menu, function(value, key) {
				value.active = false;
			});
			$scope.menu[idx].active = true;
		}

		$scope.selectAttivita = function(attivita) {
			$scope.attivitaSelected = attivita;
			angular.forEach($scope.tabs, function(tab) {
				tab.active = false;
			});
			$scope.tabs.push({
				title : 'Attività ' + attivita.id,
				active : true,
				template : 'attivita-edit'
			});
		}

		$scope.tabs = [];

		$scope.selectCliente = function(cliente) {
			angular.forEach($scope.tabs, function(tab) {
				tab.active = false;
			});
			$scope.tabs.push({
				title : 'Cliente ' + cliente.nome + ' ' + cliente.cognome,
				active : true,
				template : 'cliente-view'
			});
		}
		
		$scope.selectPolizza = function(polizza) {
			angular.forEach($scope.tabs, function(tab) {
				tab.active = false;
			});
			$scope.tabs.push({
				title : 'Polizza ' + polizza.numero,
				active : true,
				template : 'polizza-view',
				polizza: polizza
			});
		}
		
		$scope.selectTab = function(tab) {
			angular.forEach($scope.tabs, function(tab) {
				tab.active = false;
			});
			tab.active = true;
		}

	}
</script>
<body ng-controller="PageController">
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span5">
				<h2>
					Gestione attivit&agrave; <i class="icon-repeat pull-right"
						style="margin-left: 5px"></i>
				</h2>
				<ul class="nav nav-tabs nav-stacked">
					<li ng-class="{active : menu[0].active}"><a
						ng-click="selectMenu(0);mieAttivita()">Mie<span
							class="badge pull-right">10</span></a>
						<div class="well" ng-show="menu[0].active && attivita.length > 0">
							<table class="table table-striped table-bordered table-hover"
								ng-show="attivita.length > 0">
								<thead>
									<tr>
										<th>Descrizione</th>
										<th>Creata</th>
										<th>Stato</th>
										<th></th>
									</tr>
								</thead>
								<tr ng-repeat="attivita in attivita">
									<td>{{attivita.descrizione}}</td>
									<td>{{attivita.creata}}</td>
									<td>{{attivita.stato}}</td>
									<td><button class="btn btn-success btn-small"
											type="button" ng-click="selectAttivita(attivita)">SELEZIONA</button></td>
								</tr>
							</table>
						</div></li>
					<li ng-class="{active : menu[1].active}"><a
						ng-click="selectMenu(1);recentiAttivita()">Recenti</a>
						<div class="well" ng-show="menu[1].active && attivita.length > 0">
							<table class="table table-striped table-bordered table-hover"
								ng-show="attivita.length > 0">
								<thead>
									<tr>
										<th>Descrizione</th>
										<th>Creata</th>
										<th>Stato</th>
										<th></th>
									</tr>
								</thead>
								<tr ng-repeat="attivita in attivita">
									<td>{{attivita.descrizione}}</td>
									<td>{{attivita.creata}}</td>
									<td>{{attivita.stato}}</td>
									<td><button class="btn btn-success btn-small"
											type="button" ng-click="selectAttivita(attivita)">SELEZIONA</button></td>
								</tr>
							</table>
						</div></li>
					<li ng-class="{active : menu[2].active}"><a
						ng-click="selectMenu(2);tutteAttivita()">Tutte</a>
						<div class="well" ng-show="menu[2].active == true">
							<form ng-submit="doSearchPolizza()" class="form-search">
								<fieldset>
									<legend>Ricerca Avanzata</legend>
									<input type="text" placeholder="numero"
										ng-model="numeroPolizza"> <input type="text"
										placeholder="targa" ng-model="targa"> <br />
									<button class="btn btn-info " type="submit"
										ng-click="doSearchPolizza()" ng-show="numeroPolizza || targa">CERCA</button>
								</fieldset>
							</form>
						</div></li>
				</ul>




			</div>
			<div class="span7">
				<div ng-show="attivitaSelected != null">
					<ul class="nav nav-tabs">
						<li ng-class="{active : tab.active}" ng-repeat="tab in tabs"><a
							ng-click="selectTab(tab)">{{tab.title}}</a></li>
					</ul>
				</div>

				<div ng-repeat="tab in tabs" ng-include="tab.template"
					ng-show="tab.active"></div>

			</div>
		</div>
	</div>
	<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
