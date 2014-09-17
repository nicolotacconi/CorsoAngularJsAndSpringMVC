<style>
.tipoContatto .active {
	font-weight: bold;
}

.tipoContatto .disabled {
	font-style: italic;
}
</style>
<div class="well well-small attivita" style="background-color: white">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<label>Richiesta</label>
			</div>
			<div class="span10">
				{{attivitaSelected.richiesta}}
			</div>
		</div>
		<div class="row-fluid">
			<div class="span2">
				<label>Risposta</label>
			</div>
			<div class="span10">
				{{attivitaSelected.risposta}}
			</div>
		</div>
	</div>
</div>