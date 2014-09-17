<div class="well well-small attivita" style="background-color: white">
	<form class="form-inline">
		<fieldset>
			<h5>Richiesta</h5>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span2">
						<label>Descrizione</label>
					</div>
					<div class="span10">
						<textarea rows="3" ng-model="$parent.$parent.descrizioneContatto"></textarea>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span2">
						<label>Commenti</label>
					</div>
					<div class="span10">
						<textarea rows="3" ng-model="$parent.$parent.commentiContatto"></textarea>
					</div>
				</div>
			</div>
		</fieldset>
	</form>
</div>