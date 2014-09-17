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
			codiceFiscale : 'MRSRCM74M48L781U',
			polizze : [ {
				numero : 12345,
				prodotto : 'SOLO UNA'
			}, {
				numero : 45678,
				prodotto : 'TUTTO TONDO'
			} ]
		};

		$scope.bancario = {
			nome : 'Alessandro',
			cognome : 'Avesani',
			banca : 'Banca Popolare Emilia Romagna',
			filiale : 'Verona Centro',
			codiceFiliale : '01100'
		}

		$scope.polizza = {
			numero : '755489558123',
			prodotto : '626 Tutto tondo'
		}

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
		}

		$scope.sxTabs = [ {
			title : 'Attività',
			template : 'attivita-edit',
			active : true
		} ];

		$scope.nuovaPratica = function() {
			$scope.sxTabs[0].active = false;
			$scope.sxTabs.push({
				title : 'Pratica',
				template : 'pratica-new',
				active : true
			});
		}

		$scope.selectSxTab = function(tab) {
			$scope.sxTabs.forEach(function(item) {
				item.active = false;
			});
			tab.active = true;
		}

	}
</script>
<style>
.toggable {
	position: relative;
	transition: left 0.0s;
}

.toggable.left {
	position: absolute;
	left: -1800px
}

.toggable.right {
	position: absolute;
	left: 1800px
}
</style>
<body ng-controller="PageController">
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid toggable"
		ng-class="{left: attivitaSelected != null}">
		<div class="row-fluid">
			<div class="span12">
				<div class="navbar">
					<div class="navbar-inner">
						<ul class="nav">
							<li ng-class="{active : menu[0].active}"><a
								ng-click="selectMenu(0);mieAttivita()">Mie&nbsp;<span
									class="badge pull-right">10</span></a></li>
							<li ng-class="{active : menu[1].active}"><a
								ng-click="selectMenu(1);recentiAttivita()">Recenti</a></li>
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
												ng-click="doSearchPolizza()"
												ng-show="numeroPolizza || targa">CERCA</button>
										</fieldset>
									</form>
								</div></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
		<div class="row-fluid">
			<div class="span12">
				<table class="table table-striped table-bordered table-hover"
					ng-show="attivita.length > 0">
					<thead>
						<tr>
							<th>Descrizione</th>
							<th>Commenti</th>
							<th>Creata</th>
							<th>Aggiornata</th>
							<th>Stato</th>
							<th></th>
						</tr>
					</thead>
					<tr ng-repeat="attivita in attivita">
						<td>{{attivita.descrizione}}</td>
						<td>ajsdfk ah dskjfh alds adf</td>
						<td>{{attivita.creata}}</td>
						<td>{{attivita.creata}}</td>
						<td>{{attivita.stato}}</td>
						<td><button class="btn btn-success btn-small" type="button"
								ng-click="selectAttivita(attivita)">SELEZIONA</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="container-fluid toggable"
		ng-class="{right: attivitaSelected == null}">
		<div class="row-fluid">
			<div class="span5">
				<ul class="nav nav-tabs">
					<li ng-class="{active: tab.active}" ng-repeat="tab in sxTabs"><a
						href="#" ng-click="selectSxTab(tab)">{{tab.title}}</a></li>
				</ul>
				<div class="tab-content">
					<div ng-repeat="tab in sxTabs" class="tab-pane"
						ng-class="{active: tab.active}">
						<div ng-include="tab.template"></div>
					</div>
				</div>
			</div>
			<div class="span7">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#">Cliente</a></li>
					<li><a href="#">Polizza</a></li>
				</ul>
				<div ng-include="'cliente-view'"></div>
			</div>
		</div>
	</div>
	<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
