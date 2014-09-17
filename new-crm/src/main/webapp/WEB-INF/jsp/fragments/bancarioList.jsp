<div class="alert">
	<button class="btn btn-success btn-small pull-right" type="button"
		ng-click="newBancario()">NUOVO</button>
	Non esiste? Creane uno nuovo
</div>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>Nome e cognome</th>
			<th>Codice Fiscale</th>
			<th>Codice rete</th>
			<th>Banca</th>
			<th>Abi</th>
			<th>Cab</th>
			<th>Filiale</th>
			<th></th>
		</tr>
	</thead>
	<tr ng-repeat="bancario in tab.bancari">
		<td>{{bancario.nome}} {{bancario.cognome}}</td>
		<td>{{bancario.codiceFiscale}}</td>
		<td>{{bancario.rete}}</td>
		<td>{{bancario.banca}}</td>
		<td>{{bancario.abi}}</td>
		<td>{{bancario.cab}}</td>
		<td>{{bancario.filiale}}</td>
		<td><button class="btn btn-success btn-small" type="button"
				ng-click="selectBancario(bancario)">SELEZIONA</button></td>
	</tr>
</table>