<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="en" ng-app="myApp">
<jsp:include page="../fragments/headTag.jsp" />
<script type="text/javascript">
	function NuovaAttivitaController($scope, $http) {

		$scope.tabs = [];
		$scope.bancario = null;
		$scope.cliente = null;
		$scope.polizza = null;
		$scope.attivita = {};
		$scope.collapsed = {};
		$scope.doSearchBancario = function() {
			$scope.removeTabById('ricercaBancario');
			$scope.tabs.forEach(function(item) {
				item.active = false;
			});
			var tab = {
					id : 'ricercaBancario',
					title : 'Ricerca bancario',
					active : true,
					template : '<spring:url value="/" />attivita/bancario-list',
					loading: true
				};
			$scope.tabs.push(tab);
			$http.get(
					'<spring:url value="/" />attivita/searchBancario?nomeCognomeBancario=' + $scope.nomeCognome)
					.success(function(data) {
						tab.loading = false;
						tab.bancari = data;
					});
		};
		$scope.doSearchCliente = function() {
			$scope.removeTabById('ricercaCliente');
			$scope.tabs.forEach(function(item) {
				item.active = false;
			});
			var tab = {
					id : 'ricercaCliente',
					title : 'Ricerca cliente',
					active : true,
					template : '<spring:url value="/" />attivita/cliente-list',
					loading: true,
				};
			$scope.tabs.push(tab);
			$http.get(
					'<spring:url value="/" />attivita/searchCliente?nomeCognomeCliente='
							+ $scope.nomeCognomeCliente).success(
					function(data) {
						tab.loading = false;
						tab. clienti = data;
					});
		};
		$scope.doSearchPolizza = function() {
			$http.get(
					'<spring:url value="/" />attivita/searchPolizza?numeroPolizza=' + $scope.numeroPolizza
							+ '&targa=' + $scope.targa).success(function(data) {
				$scope.tabs.forEach(function(item) {
					item.active = false;
				});
				$scope.removeTabById('ricercaPolizza');
				$scope.tabs.push({
					id : 'ricercaPolizza',
					title : 'Ricerca polizza',
					active : true,
					template : '<spring:url value="/" />attivita/polizza-list',
					polizze : data
				});
			});
		};

		$scope.selectTab = function(id) {
			$scope.tabs.forEach(function(tab) {
				if (id == tab.id)
					tab.active = true;
				else
					tab.active = false;
			});
		}

		$scope.selectLeftTab = function(id) {
			
			$scope.leftTabs.forEach(function(tab) {
				if (id == tab.id)
					tab.active = !tab.active;
			});
		}

		$scope.removeTabById = function(id) {
			$scope.tabs = $scope.tabs.filter(function(item) {
				return item.id != id;
			})
		}

		$scope.selectBancario = function(bancario) {
			$scope.collapsed.infoBancario = true;
			$scope.removeTabById('ricercaBancario');
			$scope.bancario = bancario;
		}
		$scope.newBancario = function() {
			$scope.removeTabById('ricercaBancario');
			$scope.tabs.push({
				id : 'newBancario',
				title : 'Nuovo bancario',
				active : true,
				template : '<spring:url value="/" />attivita/bancario-new',
				nuovobancario : {}
			});
		}

		$scope.selectCliente = function(cliente) {
			$scope.collapsed.infoCliente = true;
			$scope.removeTabById('ricercaCliente');
			$scope.cliente = cliente;
			$http.get('<spring:url value="/" />attivita/cliente/' + $scope.cliente.id).success(
					function(data) {
						$scope.tabs.forEach(function(item) {
							item.active = false;
						});
						$scope.tabs.push({
							id : 'dettaglioCliente',
							title : 'Dettaglio cliente ' + $scope.cliente.nome
									+ ' ' + $scope.cliente.cognome,
							active : true,
							template : '<spring:url value="/" />pages/cliente-view',
						});
					});
		}
		
		$scope.selectPolizza = function(polizza) {
			$scope.collapsed.infoCliente = true;
			$scope.collapsed.infoPolizza = true;
			if ($scope.cliente == null)
				$scope.cliente = {nome: 'Mario', cognome: 'Rossi', codiceFiscale: 'CVVBDSG746BVB543Z'}
			$scope.attivita.polizza = polizza;
			$scope.viewPolizza(polizza);
		}

		$scope.viewPolizza = function(polizza) {
			$http.get(
					'<spring:url value="/" />attivita/polizza/' + polizza.id).success(function(data) {
				$scope.tabs.forEach(function(item) {
					item.active = false;
				});
				
				$scope.tabs.push({
					id : 'dettaglioPolizza' + polizza.id,
					title : 'Dettaglio polizza ' + polizza.numero,
					active : true,
					template : '<spring:url value="/" />attivita/polizza-view',
					polizza : data
				});
			});
		}
		
		$scope.viewAttivita = function(attivita) {
			$scope.tabs.forEach(function(item) {
				item.active = false;
			});
			$scope.tabs.push({
				id : 'dettaglioAttivita' + attivita.id,
				title : 'Dettaglio attivita ' + attivita.id,
				active : true,
				template : '<spring:url value="/" />attivita/attivita-view',
				attivita : attivita
			});
			
		}

		$scope.removeCliente = function() {
			$scope.collapsed.infoCliente = false;
			$scope.cliente = null;
			$scope.attivita.polizza = null;
			$scope.removeTabById('dettaglioCliente');
		}
		$scope.removePolizza = function() {
			$scope.collapsed.infoPolizza = false;
			$scope.attivita.polizza = null;
		}

		$scope.salvaBancario = function(tab, bancario) {
			console.log(tab);
			console.log(bancario);
			$http.get('<spring:url value="/" />attivita/bancario/new', {
				params : bancario
			}).success(function(data) {
				if (data.error) {
					tab.errors = data.errors;
				} else {
					$scope.removeTabById('newBancario');
					$scope.bancario = data;
				}
			});
		}

		$scope.hasErrors = function(errors, field) {
			if (errors == undefined)
				return;
			for ( var i = 0; i < errors.length; i++) {
				var error = errors[i];
				if (error.field == field) {
					return true;
				}
			}
			return false;
		}

		$scope.errorMessage = function(errors, field) {
			if (errors == undefined)
				return;

			var errorMessage = '';
			for ( var i = 0; i < errors.length; i++) {
				var error = errors[i];
				if (error.field == field) {
					if (errorMessage != '')
						errorMessage += ", ";
					errorMessage += error.message;
				}
			}
			return errorMessage;
		}
		
		$scope.leftTabs = [ {id: 'nuovoContatto',title: 'Contatto',
     	   active: true, 
    	   template : '<spring:url value="/" />pages/contatto-no-richiesta-new-accordion4'},
       {id: 'nuovaRichiesta',title: 'Richiesta',
    	   active: true, 
    	   template : '<spring:url value="/" />pages/richiesta-new-con-tipo-contatto'}];
		
		$scope.nuovoTask = function() {
			$scope.collapsed.infoBancario = true;
			$scope.collapsed.infoCliente = true;
			$scope.collapsed.infoPolizza = true;
			$scope.tipoContatto = 'attivita'; 
			$scope.leftTabs.splice(2);
			$scope.leftTabs.push({
				id : 'nuovaAttivita',
				title : 'Attività',
				active : true,
				template : '<spring:url value="/" />pages/attivita-new'
			});
			$scope.leftTabs.push({
				id : 'infoRicontatto',
				title : 'Info Ricontatto',
				active : true,
				template : '<spring:url value="/" />pages/ricontatto-new'
			});

		}
		
		$scope.nuovaPratica = function() {
			if (!$scope.isPolizzaSelezionata()) {
				return;
			}
			$scope.collapsed.infoBancario = true;
			$scope.collapsed.infoCliente = true;
			$scope.collapsed.infoPolizza = true;
			$scope.tipoContatto = 'pratica'; 
			$scope.leftTabs.splice(2);
//			$scope.leftTabs.forEach(function(item) {
//				item.active = false;
//			});
			$scope.leftTabs.push({
				id : 'nuovaPratica',
				title : 'Pratica',
				active : true,
				template : '<spring:url value="/" />pages/pratica-new-per-accordion4'
			});
			$scope.leftTabs.push({
				id : 'infoRicontatto',
				title : 'Info Ricontatto',
				active : true,
				template : '<spring:url value="/" />pages/ricontatto-new'
			});
		}
		
		$scope.sollecito = function() {
			$scope.collapsed.infoBancario = true;
			$scope.collapsed.infoCliente = true;
			$scope.collapsed.infoPolizza = true;
			$scope.tipoContatto = 'sollecito';
			$scope.leftTabs.splice(2);
			$scope.leftTabs.push({
				id : 'sollectio',
				title : 'Sollecito',
				active : true,
				template : '<spring:url value="/" />pages/sollecito-new'
			});
			$scope.leftTabs.push({
				id : 'infoRicontatto',
				title : 'Info Ricontatto',
				active : true,
				template : '<spring:url value="/" />pages/ricontatto-new'
			});
			
		}
		
		$scope.tipoContatto = null;
		
		$scope.isTipoContatto = function(tipo) {
			return $scope.tipoContatto != null && $scope.tipoContatto == tipo; 
		}
		
		$scope.isPolizzaSelezionata = function() {
			return $scope.attivita.polizza != null;
		}
		
	}
	
	angular.module('myApp', []).directive('showErrors', function() {
		return function(scope, element, attrs) {
			var errors;
			var fieldName = attrs.for;
			
			element.addClass('help-inline');
			
			function updateErrors() {
				if (scope.hasErrors(errors, fieldName)) {
					element.text(scope.errorMessage(errors, fieldName));
					$(element).show();
				} else {
					console.log('has not error!')
					element.text('');
					$(element).hide();
				}
			}
			
			scope.$watch(attrs.showErrors, function(value) {
		        errors = value;
		        updateErrors();
		      });
		};
	});
	
	function NuovaPraticaController($scope, $http) {
		$scope.myString = 'ciao'
	}

	function NuovoIndirizzoController($scope, $http) {
		$scope.recapitiTelefonici = [{}];
		
		$scope.aggiungiRecapitoTelefonico = function() {
			$scope.recapitiTelefonici.push({});
		}

		$scope.rimuoviRecapitoTelefonico = function(idx) {
			$scope.recapitiTelefonici.splice(idx, 1);
		}
	}
	
</script>
<body>
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid" ng-controller="NuovaAttivitaController">
		<div class="row-fluid">
			<div class="span5">
				<div class="well well-small">
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
						<button class="btn btn-success" ng-click="console.log('saving')"
							ng-show="tipoContatto != null">SALVA</button>
						<button class="btn btn-success" ng-click="console.log('saving')"
							ng-show="tipoContatto == 'pratica'">PROSEGUI</button>
						<button class="btn btn-success" ng-click="console.log('saving')"
							ng-show="tipoContatto == 'attivita'">ASSEGNA</button>
						<button class="btn btn-success" ng-click="console.log('saving')"
							ng-show="tipoContatto == 'attivita' || tipoContatto == 'sollecito'">CHIUDI</button>
						<button class="btn btn-link" ng-click="console.log('saving')"
							>ANNULLA</button>
					</div>
					
					<div>&nbsp:</div>
					<div>&nbsp:</div>

				</div>
			</div>
			<div class="span7">
				<ul class="nav nav-tabs" ng-show="tabs.length > 0">

					<li ng-class="{active : tab.active}" ng-repeat="tab in tabs"><a
						href="{{'#'+tab.id}}" data-toggle="tab"
						ng-click="selectTab(tab.id)"><i
							class="icon-refresh pull-right" style="margin-left: 5px"
							ng-show="tab.loading"></i><i class="icon-remove pull-right"
							ng-click="removeTabById(tab.id)" style="margin-left: 5px"
							ng-show="!tab.loading"></i>{{tab.title}}</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" ng-class="{active : tab.active}"
						id="{{tab.id}}" ng-repeat="tab in tabs">
						{{tab.content}}
						<!-- 						<div class="well"> -->
						<div ng-include="tab.template" ng-show="!tab.loading"></div>
						<!-- 						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>

<a href="#myModal" role="button" class="btn" data-toggle="modal">Launch demo modal</a>
 
<!-- Modal -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Conferma operazione</h3>
  </div>
  <div class="modal-body">
    <p>Confermi l'operazione?</p>
  </div>
  <div class="modal-footer">
    <button class="btn btn-success">Conferma</button>
    <button class="btn btn-link" data-dismiss="modal" aria-hidden="true">Annulla</button>
  </div>
</div>
	<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
