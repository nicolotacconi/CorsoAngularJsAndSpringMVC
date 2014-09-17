<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>Nominativo / Rag. Sociale</th>
			<th>Codice fiscale / P. iva</th>
			<th>Data Nascita</th>
			<th>Luogo di nascita</th>
			<th></th>
		</tr>
	</thead>
	<tr ng-repeat="cliente in tab.clienti">
		<td>{{cliente.nome}} {{cliente.cognome}}</td>
		<td>{{cliente.codiceFiscale}}</td>
		<td>{{cliente.dataNascita | date : 'dd/MM/yy'}}</td>
		<td>{{cliente.residenza.comune}}</td>
		<td><button class="btn btn-success btn-small" type="button"
				ng-click="selectCliente(cliente)">SELEZIONA</button></td>
	</tr>
</table>