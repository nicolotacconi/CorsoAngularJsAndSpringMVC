<div>
	<form class="form-horizontal">
		<div class="control-group">
			<label class="control-label" for="nome">Description</label>
			<div class="controls">
				<input type="text" id="nome" ng-model="newtodo.description">
			</div>
		</div>
		<button class="btn btn-link btn-small" type="button"
			ng-click="annulla()">ANNULLA</button>
		<button class="btn btn-success btn-small" type="submit"
			ng-click="salva(newtodo)">CONFERMA</button>

	</form>
</div>