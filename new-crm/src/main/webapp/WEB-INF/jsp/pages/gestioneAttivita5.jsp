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
			<div class="span3">
				<h2>
					Gestione attivit&agrave; <i class="icon-repeat pull-right"
						style="margin-left: 5px"></i>
				</h2>
				<ul class="nav nav-tabs nav-stacked">
					<li ng-class="{active : menu[0].active}"><a
						ng-click="selectMenu(0);mieAttivita()">Mie<span
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
										ng-click="doSearchPolizza()" ng-show="numeroPolizza || targa">CERCA</button>
								</fieldset>
							</form>
						</div></li>
				</ul>

			</div>
			<div class="span9">
				<table class="table table-striped table-bordered table-hover"
					ng-show="attivita.length > 0">
					<thead>
						<tr>
							<th>Attivita</th>
						</tr>
					</thead>
					<tr ng-repeat="attivita in attivita">
						<td>
							<div class="container-fluid toggable">
								<div class="row-fluid">
									<div class="span4">
										<span style="font-weight: bold">Attività:</span>
										{{attivita.descrizione}}
									</div>
									<div class="span4">
										<span style="font-weight: bold">Stato:</span>
										{{attivita.stato}}
									</div>
									<div class="span4">
										<button class="btn btn-success btn-small" type="button"
											ng-click="selectAttivita(attivita)">SELEZIONA</button>
									</div>
								</div>
								<div class="row-fluid">
									<div class="span4">
										<span style="font-weight: bold">Creata:</span>
										{{attivita.creata}}
									</div>
									<div class="span4">
										<span style="font-weight: bold">Aggiornata:</span>
										{{attivita.creata}}
									</div>
									<div class="span4"></div>
								</div>
							</div>
							<div class="container-fluid toggable">
								<div class="row-fluid">
									<div class="span12">
										<span style="font-weight: bold">Commenti:</span> jkah
										dskjaksdf ah sdjkh kjhsd kah fdkjh askdfh kasd f
									</div>
								</div>
							</div>
						</td>

					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="container-fluid toggable"
		ng-class="{right: attivitaSelected == null}">
		<button class="btn" type="submit" ng-click="attivitaSelected = null">INDIETRO</button>
		<div class="row-fluid">
			<div class="span5">
				<div ng-include="'attivita-edit'"></div>
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
