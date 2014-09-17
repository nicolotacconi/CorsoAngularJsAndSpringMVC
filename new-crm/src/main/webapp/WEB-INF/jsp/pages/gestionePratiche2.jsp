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
			active : true
		}, {
			active : false
		}, {
			active : false
		}, {
			active : false
		} ];

		$scope.miePratiche = function() {
			$http.get('../pratica/list').success(function(data) {
				$scope.pratiche = data;
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

		$scope.selectPratica = function(pratica) {
			$scope.attivitaSelected = pratica;
			$scope.praticaSelected = pratica;
			$scope.page.tipo = 'detail';
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

		$scope.miePratiche();

		$scope.page = {
			tipo : "master",
			leftTab : "pratica",
			rightTab : "cliente"

		};

		$scope.leftTabs = [
				{
					id : 'nuovoContatto',
					title : 'Contatto',
					active : true,
					template : '<spring:url value="/" />pages/contatto-no-richiesta-view-accordion4'
				},
				{
					id : 'nuovaRichiesta',
					title : 'Richiesta',
					active : true,
					template : '<spring:url value="/" />pages/richiesta-view'
				},
				{
					id : 'nuovaPratica',
					title : 'Pratica',
					active : true,
					template : '<spring:url value="/" />pages/pratica-view'
				},
				{
					id : 'contattiCliente',
					title : 'Contatti Cliente',
					active : false,
					template : '<spring:url value="/" />pages/contatti-list'
				},
				{
					id : 'taskSecondari',
					title : 'Task secondari',
					active : false,
					template : '<spring:url value="/" />pages/task-secondari-list'
				}, {
					id : 'documenti',
					title : 'Documenti',
					active : false,
					template : '<spring:url value="/" />pages/documenti-list'
				}, {
					id : 'infoRicontatto',
					title : 'Info Ricontatto',
					active : false,
					template : '<spring:url value="/" />pages/ricontatto-list'
				} ];
		$scope.selectLeftTab = function(id) {

			$scope.leftTabs.forEach(function(tab) {
				if (id == tab.id)
					tab.active = !tab.active;
			});
		}

	}
	function NuovoIndirizzoController($scope, $http) {
		$scope.recapitiTelefonici = [ {} ];

		$scope.aggiungiRecapitoTelefonico = function() {
			$scope.recapitiTelefonici.push({});
		}

		$scope.rimuoviRecapitoTelefonico = function(idx) {
			$scope.recapitiTelefonici.splice(idx, 1);
		}
	}
</script>
<body ng-controller="PageController">
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid"
		ng-class="{left: attivitaSelected != null}"
		ng-show="page.tipo == 'master'">
		<div class="row-fluid">
			<div class="span12">
				<div class="navbar">
					<div class="navbar-inner">
						<ul class="nav">
							<li ng-class="{active : menu[0].active}"><a href="#"
								ng-click="selectMenu(0);miePratiche()">Mie&nbsp;<span
									class="badge pull-right">10</span></a></li>
							<li ng-class="{active : menu[1].active}"><a href="#"
								ng-click="selectMenu(1);recentiAttivita()">Da assegnare</a></li>
							<li ng-class="{active : menu[2].active}"><a href="#"
								ng-click="selectMenu(1);recentiAttivita()">Recenti</a></li>
							<li ng-class="{active : menu[3].active}"><a href="#"
								ng-click="selectMenu(2);tutteAttivita()">Tutte</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
		<div class="row-fluid">
			<div class="span12">
				<table class="table table-striped table-bordered table-hover"
					ng-show="pratiche.length > 0">
					<thead>
						<tr>
							<th>N. pratica</th>
							<th>Ramo</th>
							<th>Stato</th>
							<th>Area</th>
							<th>Sub-area</th>
							<th>Apertura</th>
							<th>N. polizza</th>
							<th>Cliente</th>
							<th>Bancario</th>
							<th>Banca</th>
							<th>Prodotto</th>
							<th>Richiesta</th>
							<th>Solleciti</th>
							<th>Priorità</th>
							<th>Ufficio</th>
							<th></th>
						</tr>
					</thead>
					<tr ng-repeat="pratica in pratiche">
						<td>{{pratica.numero}}</td>
						<td>{{pratica.ramo}}</td>
						<td>{{pratica.stato}}</td>
						<td>{{pratica.area}}</td>
						<td>{{pratica.subarea}}</td>
						<td>{{pratica.apertura | date :'dd-MM-yyyy'}}</td>
						<td>{{pratica.numeroPolizza}}</td>
						<td>{{pratica.cliente}}</td>
						<td>{{pratica.bancario}}</td>
						<td>{{pratica.banca}}</td>
						<td>{{pratica.prodotto}}</td>
						<td>{{pratica.richiesta}}</td>
						<td>{{pratica.solleciti}}</td>
						<td>{{pratica.priorita}}</td>
						<td>{{pratica.ufficio}}</td>
						<td><button class="btn btn-success btn-small" type="button"
								ng-click="selectPratica(pratica)">SELEZIONA</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="container-fluid" ng-show="page.tipo == 'detail'">
		<a href="#" ng-click="page.tipo = 'master'" class="pull-right">Torna
			alla ricerca</a>
		<div class="row-fluid">
			<div class="span5">
				<ul class="nav nav-tabs">
					<li ng-class="{active: page.leftTab == 'pratica'}"><a href="#"
						ng-click="page.leftTab = 'pratica'">Pratica
							{{praticaSelected.numero}}</a></li>
					<li ng-class="{active: page.leftTab == 'datiAggiuntivi'}"><a
						href="#" ng-click="page.leftTab = 'datiAggiuntivi'">Dati
							aggiuntivi</a></li>
					<li ng-class="{active: page.leftTab == 'history'}"><a href="#"
						ng-click="page.leftTab = 'history'">History</a></li>
				</ul>
				<div class="well well-small" ng-show="page.leftTab == 'pratica'">
					<div class="accordion" id="accordion">
						<div class="accordion-group" ng-repeat="tab in leftTabs">
							<div class="accordion-heading">
								<a class="accordion-toggle" ng-click="selectLeftTab(tab.id)">{{tab.title}}</a>
							</div>
							<div id="collapse_{{tab.id}}" class="accordion-body collapse"
								ng-class="{in: tab.active}">
								<div class="accordion-inner">
									<div ng-include="tab.template" ng-show="!tab.loading"></div>
								</div>
							</div>

						</div>
					</div>

					<div class="pull-right">
						<button class="btn btn-success" ng-click="console.log('saving')">SALVA</button>
						<button class="btn btn-success" ng-click="console.log('saving')">SOSPENDI</button>
						<button class="btn btn-success" ng-click="console.log('saving')">CHIUDI</button>
						<button class="btn btn-success" ng-click="console.log('saving')">PROCEDI</button>
					</div>

					<div>&nbsp:</div>
					<div>&nbsp:</div>

				</div>
				<div class="well well-small"
					ng-show="page.leftTab == 'datiAggiuntivi'">
					<div ng-include="'cambio-veicolo-indirizzo'"></div>
				</div>
				<div class="well well-small" ng-show="page.leftTab == 'history'">
					<table class="table table-striped">
						<thead>
							<th>Data</th>
							<th>Azione</th>
							<th>Utente assegnatario</th>
						</thead>
						<tr>
							<td>11-10-2013</td>
							<td>Apertura</td>
							<td>Utente 1</td>
						</tr>
						<tr>
							<td>13-10-2013</td>
							<td>Richiesta info a ptf</td>
							<td>Ptf1</td>
						</tr>

					</table>
				</div>

			</div>
			<div class="span7">
				<ul class="nav nav-tabs">
					<li ng-class="{active: page.rightTab == 'cliente'}"><a
						href="#" ng-click="page.rightTab = 'cliente'">Cliente</a></li>
					<li ng-class="{active: page.rightTab == 'polizza'}"><a
						href="#" ng-click="page.rightTab = 'polizza'">Polizza</a></li>
				</ul>
				<div ng-include="'cliente-view'"
					ng-show="page.rightTab == 'cliente'"></div>
				<div ng-include="'polizza-view'"
					ng-show="page.rightTab == 'polizza'"></div>
			</div>
		</div>
	</div>
	<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
