<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<h2>{{cliente.nome}} {{cliente.cognome}}</h2>
<h4>Polizze Vita</h4>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>N. polizza</th>
			<th>N. proposta</th>
			<th>Società</th>
			<th>Prodotto</th>
			<th>Stato</th>
			<th>Decorrenza</th>
			<th>Scadenza</th>
<!-- 			<th>Premio base annualizzato</th> -->
<!-- 			<th>Banca emissione</th> -->
<!-- 			<th>Filiale emissione</th> -->
			<th>Banca gestione</th>
<!-- 			<th>Filiale gestione</th> -->
			<th>Ruolo</th>
<!-- 			<th>Ndg</th> -->
			<th></th>
		</tr>
	</thead>
	<tr ng-repeat="polizza in cliente.polizze | filter : {tipo: 'VITA'}">
		<td><a href="#" ng-click="viewPolizza(polizza)">{{polizza.numero}}</a></td>
		<td>{{polizza.proposta}}</td>
		<td>{{polizza.societa}}</td>
		<td>{{polizza.prodotto}}</td>
		<td>{{polizza.stato}}</td>
		<td>{{polizza.decorrenza | date : 'dd/MM/yy'}}</td>
		<td>{{polizza.scadenza | date : 'dd/MM/yy'}}</td>
<!-- 		<td>{{polizza.premioAnnualizzato}}</td> -->
<!-- 		<td>{{polizza.banca}}</td> -->
<!-- 		<td>{{polizza.filiale}}</td> -->
		<td>{{polizza.banca}}</td>
<!-- 		<td>{{polizza.filiale}}</td> -->
		<td>{{polizza.ruolo}}</td>
<!-- 		<td>{{polizza.ndg}}</td> -->
		<td>
				<button class="btn btn-success btn-small"
					ng-click="selectPolizza(polizza)">SELEZIONA</button>
<!-- 			<div class="btn-group" ng-show="attivita.polizza == null"> -->
<!-- 				<button class="btn btn-success btn-small" -->
<!-- 					ng-click="selectPolizza(polizza)">SELEZIONA</button> -->
<!-- 				<button class="btn dropdown-toggle btn-success btn-small" -->
<!-- 					data-toggle="dropdown"> -->
<!-- 					<span class="caret"></span> -->
<!-- 				</button> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="#" ng-click="viewPolizza(polizza)">VISUALIZZA</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="btn-group" ng-show="attivita.polizza != null"> -->
<!-- 				<button class="btn btn-info btn-small" -->
<!-- 					ng-click="viewPolizza(polizza)">VISUALIZZA</button> -->
<!-- 				<button class="btn dropdown-toggle btn-info btn-small" -->
<!-- 					data-toggle="dropdown"> -->
<!-- 					<span class="caret"></span> -->
<!-- 				</button> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="#" ng-click="selectPolizza(polizza)">SELEZIONA</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
		</td>
	</tr>
</table>
<h4>Polizze Auto</h4>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>N. polizza</th>
			<th>N. preventivo</th>
			<th>Società</th>
			<th>Prodotto</th>
			<th>Stato</th>
			<th>Decorrenza</th>
			<th>Scadenza</th>
<!-- 			<th>Premio annuo lordo</th> -->
			<th>Polizza sostituita</th>
			<th>Polizza sostituente</th>
<!-- 			<th>Banca emissione</th> -->
<!-- 			<th>Filiale emissione</th> -->
			<th>Banca gestione</th>
<!-- 			<th>Filiale gestione</th> -->
			<th>Ruolo</th>
			<th>Targa</th>
<!-- 			<th>Ndg</th> -->
			<th></th>
		</tr>
	</thead>
	<tr ng-repeat="polizza in cliente.polizze | filter : {tipo: 'AUTO'}">
		<td><a href="#" ng-click="viewPolizza(polizza)">{{polizza.numero}}</a></td>
		<td>{{polizza.proposta}}</td>
		<td>{{polizza.societa}}</td>
		<td>{{polizza.prodotto}}</td>
		<td>{{polizza.stato}}</td>
		<td>{{polizza.decorrenza | date : 'dd/MM/yy'}}</td>
		<td>{{polizza.scadenza | date : 'dd/MM/yy'}}</td>
<!-- 		<td>{{polizza.premioAnnualizzato}}</td> -->
		<td>1234567</td>
		<td></td>
<!-- 		<td>{{polizza.banca}}</td> -->
<!-- 		<td>{{polizza.filiale}}</td> -->
		<td>{{polizza.banca}}</td>
<!-- 		<td>{{polizza.filiale}}</td> -->
		<td>{{polizza.ruolo}}</td>
		<td>{{polizza.targa}}</td>
<!-- 		<td>{{polizza.ndg}}</td> -->
		<td>
				<button class="btn btn-success btn-small"
					ng-click="selectPolizza(polizza)">SELEZIONA</button>
<!-- 			<div class="btn-group" ng-show="attivita.polizza == null"> -->
<!-- 				<button class="btn btn-success btn-small" -->
<!-- 					ng-click="selectPolizza(polizza)">SELEZIONA</button> -->
<!-- 				<button class="btn dropdown-toggle btn-success btn-small" -->
<!-- 					data-toggle="dropdown"> -->
<!-- 					<span class="caret"></span> -->
<!-- 				</button> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="#" ng-click="viewPolizza(polizza)">VISUALIZZA</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="btn-group" ng-show="attivita.polizza != null"> -->
<!-- 				<button class="btn btn-info btn-small" -->
<!-- 					ng-click="viewPolizza(polizza)">VISUALIZZA</button> -->
<!-- 				<button class="btn dropdown-toggle btn-info btn-small" -->
<!-- 					data-toggle="dropdown"> -->
<!-- 					<span class="caret"></span> -->
<!-- 				</button> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="#" ng-click="selectPolizza(polizza)">SELEZIONA</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
		</td>
	</tr>
</table>
<h4>Polizze Rami Elementari</h4>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>N. polizza</th>
			<th>N. preventivo</th>
			<th>Società</th>
			<th>Prodotto</th>
			<th>Stato</th>
			<th>Decorrenza</th>
			<th>Scadenza</th>
<!-- 			<th>Premio annuo lordo</th> -->
			<th>Polizza sostituita</th>
			<th>Polizza sostituente</th>
<!-- 			<th>Banca emissione</th> -->
<!-- 			<th>Filiale emissione</th> -->
			<th>Banca gestione</th>
<!-- 			<th>Filiale gestione</th> -->
			<th>Ruolo</th>
<!-- 			<th>Ndg</th> -->
			<th></th>
		</tr>
	</thead>
	<tr ng-repeat="polizza in cliente.polizze | filter : {tipo: 'RE'}">
		<td><a href="#" ng-click="viewPolizza(polizza)">{{polizza.numero}}</a></td>
		<td>{{polizza.proposta}}</td>
		<td>{{polizza.societa}}</td>
		<td>{{polizza.prodotto}}</td>
		<td>{{polizza.stato}}</td>
		<td>{{polizza.decorrenza | date : 'dd/MM/yy'}}</td>
		<td>{{polizza.scadenza | date : 'dd/MM/yy'}}</td>
<!-- 		<td>{{polizza.premioAnnualizzato}}</td> -->
		<td>1234567</td>
		<td></td>
<!-- 		<td>{{polizza.banca}}</td> -->
<!-- 		<td>{{polizza.filiale}}</td> -->
		<td>{{polizza.banca}}</td>
<!-- 		<td>{{polizza.filiale}}</td> -->
		<td>{{polizza.ruolo}}</td>
<!-- 		<td>{{polizza.ndg}}</td> -->
		<td>
				<button class="btn btn-success btn-small"
					ng-click="selectPolizza(polizza)">SELEZIONA</button>
<!-- 			<div class="btn-group" ng-show="attivita.polizza == null"> -->
<!-- 				<button class="btn btn-success btn-small" -->
<!-- 					ng-click="selectPolizza(polizza)">SELEZIONA</button> -->
<!-- 				<button class="btn dropdown-toggle btn-success btn-small" -->
<!-- 					data-toggle="dropdown"> -->
<!-- 					<span class="caret"></span> -->
<!-- 				</button> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="#" ng-click="viewPolizza(polizza)">VISUALIZZA</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 			<div class="btn-group" ng-show="attivita.polizza != null"> -->
<!-- 				<button class="btn btn-info btn-small" -->
<!-- 					ng-click="viewPolizza(polizza)">VISUALIZZA</button> -->
<!-- 				<button class="btn dropdown-toggle btn-info btn-small" -->
<!-- 					data-toggle="dropdown"> -->
<!-- 					<span class="caret"></span> -->
<!-- 				</button> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="#" ng-click="selectPolizza(polizza)">SELEZIONA</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
		</td>
	</tr>
</table>
<h4>Contatti cliente</h4>
<div ng-include="'<spring:url value="/" />pages/contatti-cliente-list'"></div>