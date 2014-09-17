
<!-- <div class="well well-small" style="margin-bottom: 2px"> -->
<!-- 	<div class="row-fluid"> -->
<!-- 		<div class="span3" style="min-height: 0px"> -->
<!-- 			<b>Tipo contatto</b> -->
<!-- 		</div> -->
<!-- 		<div class="span3" style="min-height: 0px">Inbound</div> -->
<!-- 		<div class="span3" style="min-height: 0px"> -->
<!-- 			<b>Utente</b> -->
<!-- 		</div> -->
<!-- 		<div class="span3" style="min-height: 0px">Mario Rossi</div> -->
<!-- 	</div> -->
<!-- </div> -->

<style>
.white {
	background-color: white
}
</style>
<div class="well well-small"
	style="margin-bottom: 2px; min-height: 30px"
	ng-class="{white: !collapsed.infoBancario || bancario != null}">
	<div ng-show="!collapsed.infoBancario">
		<form ng-submit="doSearchBancario()" class="form-search"
			style="margin: 0px">
			<fieldset>
				<button class="btn btn-info pull-right" type="submit"
					ng-click="doSearchBancario()" ng-show="nomeCognomeBancario">CERCA</button>
				<span class="span2" style="font-weight: bold; margin-left: 0">Bancario</span>
				<input class="span5" type="text" placeholder="cognome nome"
					ng-model="nomeCognomeBancario" ng-submit="doSearchBancario()">
				<input class="span2" type="text" placeholder="ABI" ng-model="abi">
				<input class="span2" type="text" placeholder="CAB" ng-model="cab">
			</fieldset>
		</form>
	</div>
	<div ng-show="collapsed.infoBancario">
		<div ng-show="bancario != null">
			<i class="icon-remove pull-right"
				ng-click="bancario = null; collapsed.infoBancario = false"></i>
			<div class="row-fluid">
				<div class="span2">
					<b>Bancario: </b>
				</div>
				<div>{{bancario.nome}} {{bancario.cognome}}, filiale di
					{{bancario.filiale}}, {{bancario.banca}}</div>
			</div>
		</div>
		<div ng-show="bancario == null">
			<i class="icon-plus pull-right"
				ng-click="collapsed.infoBancario = false"></i>
			<div class="row-fluid">
				<div class="span2">
					<b>Bancario: </b>
				</div>
				<div></div>
			</div>
		</div>
	</div>
</div>
<div class="well well-small"
	style="margin-bottom: 2px; min-height: 30px"
	ng-class="{white: !collapsed.infoCliente || cliente != null}">
	<div ng-show="!collapsed.infoCliente">
		<form ng-submit="doSearchCliente()" class="form-search"
			style="margin: 0px">
			<fieldset>
				<button class="btn btn-info pull-right" type="submit"
					ng-click="doSearchCliente()" ng-show="nomeCognomeCliente">CERCA</button>
				<span class="span2" style="font-weight: bold; margin-left: 0">Cliente</span>
				<input class="span4" type="text" placeholder="cognome nome"
					ng-model="nomeCognomeCliente"> <input class="span3"
					type="text" placeholder="codice fiscale" ng-model="codicefiscale">
				<input class="span2" type="text" placeholder="NDG" ng-model="ndg">
			</fieldset>
		</form>
	</div>
	<div ng-show="collapsed.infoCliente">
		<div ng-show="cliente != null">
			<i class="icon-remove pull-right" ng-click="removeCliente()"></i>
			<div class="row-fluid">
				<div class="span2">
					<b>Cliente: </b>
				</div>
				<div>{{cliente.nome}} {{cliente.cognome}},
					{{cliente.codiceFiscale}}</div>
			</div>
		</div>
		<div ng-show="cliente == null">
			<i class="icon-plus pull-right"
				ng-click="collapsed.infoCliente = false"></i>
			<div class="row-fluid">
				<div class="span2">
					<b>Cliente: </b>
				</div>
				<div></div>
			</div>
		</div>
	</div>
</div>
<div class="well well-small"
	style="margin-bottom: 2px; min-height: 30px"
	ng-class="{white: !collapsed.infoPolizza || attivita.polizza != null}">
	<div ng-show="!collapsed.infoPolizza">
		<form ng-submit="doSearchPolizza()" class="form-search"
			style="margin: 0px">
			<fieldset>
				<button class="btn btn-info pull-right" type="submit"
					ng-click="doSearchPolizza()" ng-show="numeroPolizza || targa">CERCA</button>
				<span class="span2" style="font-weight: bold; margin-left: 0">Polizza</span>
				<input type="text" placeholder="numero" ng-model="numeroPolizza"
					class="span4"> <input type="text" placeholder="targa"
					ng-model="targa" class="span5">
			</fieldset>
		</form>
	</div>
	<div ng-show="collapsed.infoPolizza">
		<div ng-show="attivita.polizza != null">
			<i class="icon-remove pull-right" ng-click="removePolizza()"></i>
			<div class="row-fluid">
				<div class="span2">
					<b>Polizza:</b>
				</div>
				<div>{{attivita.polizza.numero}}, prodotto
					{{attivita.polizza.prodotto}}</div>
			</div>
		</div>
		<div ng-show="attivita.polizza == null">
			<i class="icon-plus pull-right"
				ng-click="collapsed.infoPolizza = false"></i>
			<div class="row-fluid">
				<div class="span2">
					<b>Polizza: </b>
				</div>
				<div></div>
			</div>
		</div>
	</div>
</div>