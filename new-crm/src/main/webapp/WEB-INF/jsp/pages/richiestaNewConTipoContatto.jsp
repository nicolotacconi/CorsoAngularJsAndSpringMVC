<style>
.tipoContatto .active {
	font-weight: bold;
}

.tipoContatto .disabled {
	font-style: italic;
}
</style>
<div class="well well-small attivita" style="background-color: white">
	<form class="form-inline">
		<fieldset>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span2">
						<label>Richiesta</label>
					</div>
					<div class="span10">
						<textarea rows="3" ng-model="$parent.$parent.descrizioneContatto"></textarea>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span2">
						<label>Risposta</label>
					</div>
					<div class="span10">
						<textarea rows="3" ng-model="$parent.$parent.commentiContatto"></textarea>
					</div>
				</div>
			</div>
		</fieldset>
	</form>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span4">Richiesta di tipo:</div>
			<div class="span8">

				<div class="btn-group tipoContatto"
					style="margin: auto; display: block; width: 200px">
					<button class="btn"
						ng-class="{active: isTipoContatto('attivita'), __disabled: $parent.$parent.tipoContatto != null && $parent.$parent.tipoContatto != 'attivita'}"
						ng-click="nuovoTask(polizza)">Attività</button>
					<button class="btn"
						ng-class="{active: isTipoContatto('pratica'), disabled: !isPolizzaSelezionata()}"
						ng-click="nuovaPratica(polizza)">Pratica</button>
					<button class="btn"
						ng-class="{active: isTipoContatto('sollecito'), __disabled: $parent.$parent.tipoContatto != null && $parent.$parent.tipoContatto != 'sollecito'}"
						ng-click="sollecito(polizza)">Ricontatto</button>
				</div>
			</div>
		</div>
	</div>
</div>