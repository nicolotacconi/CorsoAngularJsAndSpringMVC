
<td>{{polizza.numero}}</td>
<td>{{polizza.prodotto}}</td>
<td>{{polizza.tipo}}</td>
<td>{{polizza.decorrenza}}</td>
<td>
	<div class="btn-group" ng-show="attivita.polizza == null">
		<button class="btn btn-success btn-small"
			ng-click="selectPolizza(polizza)">SELEZIONA</button>
		<button class="btn dropdown-toggle btn-success btn-small"
			data-toggle="dropdown">
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="#" ng-click="viewPolizza(polizza)">VISUALIZZA</a></li>
		</ul>
	</div>
	<div class="btn-group" ng-show="attivita.polizza != null">
		<button class="btn btn-info btn-small" ng-click="viewPolizza(polizza)">VISUALIZZA</button>
		<button class="btn dropdown-toggle btn-info btn-small"
			data-toggle="dropdown">
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="#" ng-click="selectPolizza(polizza)">SELEZIONA</a></li>
		</ul>
	</div>
</td>
