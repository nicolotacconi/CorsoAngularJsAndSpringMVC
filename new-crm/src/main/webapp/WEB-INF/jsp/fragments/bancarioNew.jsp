<form class="form-horizontal">
	<div class="control-group"
		ng-class="{error : hasErrors(tab.errors, 'nome')}">
		<label class="control-label" for="nome">Nome</label>
		<div class="controls">
			<input type="text" id="nome" placeholder="nome"
				ng-model="nuovobancario.nome"> <span
				show-errors="tab.errors" for="nome" />
		</div>
	</div>
	<div class="control-group"
		ng-class="{error : hasErrors(tab.errors, 'cognome')}">
		<label class="control-label" for="cognome">Cognome</label>
		<div class="controls">
			<input type="text" id="cognome" placeholder="cognome"
				ng-model="nuovobancario.cognome"> <span
				show-errors="tab.errors" for="cognome" />
		</div>
	</div>
	<div class="control-group"
		ng-class="{error : hasErrors(tab.errors, 'banca')}">
		<label class="control-label" for="banca">Banca</label>
		<div class="controls">
			<input type="text" id="banca" placeholder="banca"
				ng-model="nuovobancario.banca"> <span
				show-errors="tab.errors" for="banca" />
		</div>
	</div>
	<div class="control-group"
		ng-class="{error : hasErrors(tab.errors, 'filiale')}">
		<label class="control-label" for="filiale">Filiale</label>
		<div class="controls">
			<input type="text" id="filiale" placeholder="filiale"
				ng-model="nuovobancario.filiale"> <span
				show-errors="tab.errors" for="filiale" />
		</div>
	</div>
	<div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-success"
				ng-click="salvaBancario(tab, nuovobancario)">SALVA</button>
		</div>
	</div>
</form>