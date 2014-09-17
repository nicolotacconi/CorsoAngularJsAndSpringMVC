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
		$scope.doSearchBancario = function() {
			$scope.removeTabById('ricercaBancario');
			$scope.tabs.forEach(function(item) {
				item.active = false;
			});
			var tab = {
					id : 'ricercaBancario',
					title : 'Ricerca bancario',
					active : true,
					template : 'bancario-list',
					loading: true
				};
			$scope.tabs.push(tab);
			$http.get(
					'searchBancario?nomeCognomeBancario=' + $scope.nomeCognome)
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
					template : 'cliente-list',
					loading: true,
				};
			$scope.tabs.push(tab);
			$http.get(
					'searchCliente?nomeCognomeCliente='
							+ $scope.nomeCognomeCliente).success(
					function(data) {
						tab.loading = false;
						tab. clienti = data;
					});
		};
		$scope.doSearchPolizza = function() {
			$http.get(
					'searchPolizza?numeroPolizza=' + $scope.numeroPolizza
							+ '&targa=' + $scope.targa).success(function(data) {
				$scope.tabs.forEach(function(item) {
					item.active = false;
				});
				$scope.removeTabById('ricercaPolizza');
				$scope.tabs.push({
					id : 'ricercaPolizza',
					title : 'Ricerca polizza',
					active : true,
					template : 'polizza-list',
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

		$scope.removeTabById = function(id) {
			$scope.tabs = $scope.tabs.filter(function(item) {
				return item.id != id;
			})
		}

		$scope.selectBancario = function(bancario) {
			$scope.removeTabById('ricercaBancario');
			$scope.bancario = bancario;
		}
		$scope.newBancario = function() {
			$scope.removeTabById('ricercaBancario');
			$scope.tabs.push({
				id : 'newBancario',
				title : 'Nuovo bancario',
				active : true,
				template : 'bancario-new',
				nuovobancario : {}
			});
		}

		$scope.selectCliente = function(cliente) {
			$scope.removeTabById('ricercaCliente');
			$scope.cliente = cliente;
			$http.get('cliente/' + $scope.cliente.id).success(
					function(data) {
						$scope.tabs.forEach(function(item) {
							item.active = false;
						});
						$scope.tabs.push({
							id : 'dettaglioCliente',
							title : 'Dettaglio cliente ' + $scope.cliente.nome
									+ ' ' + $scope.cliente.cognome,
							active : true,
							template : '../pages/cliente-view',
						});
					});
		}
		
		$scope.selectPolizza = function(polizza) {
			$scope.attivita.polizza = polizza;
			$scope.viewPolizza(polizza);
		}

		$scope.viewPolizza = function(polizza) {
			$http.get(
					'polizza/' + polizza.id).success(function(data) {
				$scope.tabs.forEach(function(item) {
					item.active = false;
				});
				
				$scope.tabs.push({
					id : 'dettaglioPolizza' + polizza.id,
					title : 'Dettaglio polizza ' + polizza.numero,
					active : true,
					template : 'polizza-view',
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
				template : 'attivita-view',
				attivita : attivita
			});
			
		}

		$scope.removeCliente = function() {
			$scope.cliente = null;
			$scope.attivita.polizza = null;
			$scope.removeTabById('dettaglioCliente');
		}
		$scope.removePolizza = function() {
			$scope.attivita.polizza = null;
		}

		$scope.salvaBancario = function(tab, bancario) {
			console.log(tab);
			console.log(bancario);
			$http.get('bancario/new', {
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
</script>
<body>
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid" ng-controller="NuovaAttivitaController">
		<div class="row-fluid">
			<div class="span5">
				<div class="well well-small">
					<h3>Nuova attività</h3>
					<div class="well well-small" style="background-color: white">
						<div ng-show="bancario == null">
							<form ng-submit="doSearchBancario()" class="form-search">
								<fieldset>
									<legend>Ricerca Bancario</legend>
									<input type="text" placeholder="cognome nome"
										ng-model="nomeCognomeBancario">
									<button class="btn btn-info " type="button"
										ng-click="doSearchBancario()" ng-show="nomeCognomeBancario">CERCA</button>
								</fieldset>
							</form>
						</div>
						<div ng-show="bancario != null">
							<i class="icon-remove pull-right" ng-click="bancario = null"></i>
							<h4>Bancario Selezionato</h4>
							<div>
								<div class="row-fluid">
									<div class="span5">Nome</div>
									<div class="span7">{{bancario.nome}} {{bancario.cognome}}</div>
								</div>
								<div class="row-fluid">
									<div class="span5">Banca</div>
									<div class="span7">{{bancario.banca}}, filiale di
										{{bancario.filiale}}</div>
								</div>
							</div>
						</div>
					</div>
					<div class="well well-small" style="background-color: white">
						<div ng-show="cliente == null">
							<form ng-submit="doSearchCliente()" class="form-search">
								<fieldset>
									<legend>Ricerca Cliente</legend>
									<input type="text" placeholder="cognome nome"
										ng-model="nomeCognomeCliente">
									<button class="btn btn-info " type="button"
										ng-click="doSearchCliente()" ng-show="nomeCognomeCliente">CERCA</button>
								</fieldset>
							</form>
						</div>
						<div ng-show="cliente != null">
							<i class="icon-remove pull-right" ng-click="removeCliente()"></i>
							<h4>Cliente Selezionato</h4>
							<div>
								<div class="row-fluid">
									<div class="span5">Nome</div>
									<div class="span7">{{cliente.nome}} {{cliente.cognome}}</div>
								</div>
								<div class="row-fluid">
									<div class="span5">Codice Fiscale</div>
									<div class="span7">{{cliente.codiceFiscale}}</div>
								</div>
							</div>
						</div>
					</div>
					<div class="well well-small" style="background-color: white">
						<div ng-show="attivita.polizza == null">
							<form ng-submit="doSearchPolizza()" class="form-search">
								<fieldset>
									<legend>Polizza</legend>
									<input type="text" placeholder="numero"
										ng-model="numeroPolizza"> <input type="text"
										placeholder="targa" ng-model="targa">
									<button class="btn btn-info " type="submit"
										ng-click="doSearchPolizza()" ng-show="numeroPolizza || targa">CERCA</button>
								</fieldset>
							</form>
						</div>
						<div ng-show="attivita.polizza != null">
							<i class="icon-remove pull-right" ng-click="removePolizza()"></i>
							<h4>Polizza Selezionata</h4>
							<div>
								<div class="row-fluid">
									<div class="span5">Numero</div>
									<div class="span7">{{attivita.polizza.numero}}</div>
								</div>
								<div class="row-fluid">
									<div class="span5">Prodotto</div>
									<div class="span7">{{attivita.polizza.prodotto}}</div>
								</div>
							</div>
						</div>
					</div>
					<div class="well well-small attivita"
						style="background-color: white">
						<form class="form-inline">
							<fieldset>
								<legend>Attività</legend>
								<div class="container-fluid">
									<div class="row-fluid">
										<div class="span2">
											<label>Ambito</label>
										</div>
										<div class="span4">
											<input type="text" placeholder="cognome nome"
												style="width: 100%">
										</div>
										<div class="span2">
											<label>Tipo attività</label>
										</div>
										<div class="span4">
											<input type="text" placeholder="cognome nome"
												style="width: 100%">
										</div>
									</div>
									<div class="row-fluid">
										<div class="span2">
											<label>Motivo della chiamata</label>
										</div>
										<div class="span4">
											<input type="text" placeholder="cognome nome"
												style="width: 100%">
										</div>
										<div class="span2"></div>
										<div class="span4"></div>
									</div>
									<div class="row-fluid">
										<div class="span2">
											<label>Descrizione</label>
										</div>
										<div class="span10">
											<textarea rows="3"></textarea>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span2">
											<label>Commenti</label>
										</div>
										<div class="span10">
											<textarea rows="3"></textarea>
										</div>
									</div>
									<div class="row-fluid">
										<div class="span2">
											<label>Motivo della disdetta</label>
										</div>
										<div class="span4">
											<input type="text" placeholder="cognome nome"
												style="width: 100%">
										</div>
										<div class="span2">
											<label>Società</label>
										</div>
										<div class="span4">
											<input type="text" placeholder="cognome nome"
												style="width: 100%">
										</div>
									</div>
									<div class="row-fluid">
										<div class="span2">
											<label>Assegnata a</label>
										</div>
										<div class="span4">
											<input type="text" placeholder="cognome nome"
												style="width: 100%">
										</div>
										<div class="span2"></div>
										<div class="span4"></div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="pull-right">
						<button class="btn btn-success" ng-click="viewPolizza(polizza)">SALVA</button>
					</div>
					<div>
						<i>&nbsp;</i>
					</div>
					<div>
						<i>&nbsp;</i>
					</div>
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
	<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
