<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>Tipo polizza</th>
			<th>N. polizza</th>
			<th>N. proposta / preventivo</th>
			<th>Prodotto</th>
			<th>Stato</th>
			<th>Decorrenza</th>
			<th>Scadenza</th>
			<th>N. targa</th>
			<th></th>
		</tr>
	</thead>
	<tr ng-repeat="polizza in tab.polizze">
		<td>{{polizza.tipo}}</td>
		<td>{{polizza.numero}}</td>
		<td>{{polizza.proposta}}</td>
		<td>{{polizza.prodotto}}</td>
		<td>{{polizza.stato}}</td>
		<td>{{polizza.decorrenza | date : 'dd/MM/yy'}}</td>
		<td>{{polizza.scadenza | date : 'dd/MM/yy'}}</td>
		<td>{{polizza.targa}}</td>
		<td><button class="btn btn-success btn-small" type="button"
				ng-click="selectPolizza(polizza)">SELEZIONA</button></td>
	</tr>
</table>