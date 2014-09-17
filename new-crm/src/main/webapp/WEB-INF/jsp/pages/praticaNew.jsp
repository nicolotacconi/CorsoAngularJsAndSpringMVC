<div class="well well-small">
	<i class="icon-remove pull-right"
		ng-click="$parent.attivitaSelected = null"></i>
	<h3>Nuova Pratica</h3>
	<div class="well well-small" style="background-color: white">
		<div>
			<div class="row-fluid">
				<div class="span3">Tipo</div>
				<div class="span3">
					<select style="width: 100%">
						<option>Danni</option>
						<option>Vita</option>
					</select>
				</div>
				<div class="span3">Priorità</div>
				<div class="span3">
					<select style="width: 100%">
						<option>Alta</option>
						<option selected="selected">Media</option>
						<option>Bassa</option>
					</select>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span3">Area</div>
				<div class="span3">
					<select style="width: 100%">
						<option></option>
						<option>generica</option>
						<option>Area 1</option>
						<option>Area 2</option>
					</select>
				</div>
				<div class="span3">Sub-Area</div>
				<div class="span3">
					<select style="width: 100%">
						<option></option>
						<option>Sub1</option>
						<option>Sub2</option>
						<option>Sub3</option>
					</select>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span3">Canale IN</div>
				<div class="span3">FAX</div>
				<div class="span3">Canale OUT</div>
				<div class="span3"></div>
			</div>
		</div>
	</div>
	<div class="well well-small" style="background-color: white">
		<h4>Dettaglio Cambio Veicolo</h4>
		<h6>Documenti da richiedere</h6>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<label class="checkbox"> <input type="checkbox" value="">
						Richiesta firmata dal cliente
					</label> <label class="checkbox"> <input type="checkbox" value="">
						Contrassegno in originale
					</label>
				</div>
			</div>
		</div>
		<h6>Informazioni del veicolo</h6>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span3">Tipologia veicolo</div>
				<div class="span3">
					<select style="width: 100%">
						<option></option>
						<option>Autoveicolo</option>
						<option>Tir</option>
					</select>
				</div>
				<div class="span3">Modello</div>
				<div class="span3">
					<input type="text" placeholder="modello" style="width: 100%">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span3">
					<label>Marca</label>
				</div>
				<div class="span3">
					<input type="text" placeholder="marca" style="width: 100%">
				</div>
				<div class="span3">
					<label>Versione</label>
				</div>
				<div class="span3">
					<input type="text" placeholder="versione" style="width: 100%">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span3">
					<label>Immatricolazione</label>
				</div>
				<div class="span3">
					<input type="date" placeholder="immatricolazione"
						style="width: 100%">
				</div>
				<div class="span3">
					<label>HP/CF</label>
				</div>
				<div class="span3">
					<input type="text" placeholder="hp/cf" style="width: 100%">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span3">
					<label>Kw</label>
				</div>
				<div class="span3">
					<input type="text" placeholder="kw" style="width: 100%">
				</div>
				<div class="span3">
					<label>CC</label>
				</div>
				<div class="span3">
					<input type="text" placeholder="cc" style="width: 100%">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span3">Q.li</div>
				<div class="span3">
					<input type="text" placeholder="qli" style="width: 100%">
				</div>
				<div class="span3">Targa/Telatio</div>
				<div class="span3">
					<input type="text" placeholder="targa/telaio" style="width: 100%">
				</div>
			</div>
		</div>
	</div>
	<div class="pull-right">
		<button class="btn btn-success" ng-click="viewPolizza(polizza)">SALVA</button>
	</div>

</div>