<div style="width: 100%">
	<h1 class="titoloPagina" id="indexServizi">Carica nuovi contenuti</h1>
	<br> <br>



	<form name="formContenuti" ng-submit="caricaContenuto()"
		ng-controller="ContenutiController">
		<div class="div-table">
			<div class="form-group row">
				<div class="col-md-5">
					<label>Tipo contenuto</label>
				</div>
				<div class="col-md-50">
					<div>
						<select class="form-control" ng-model="contenuto.type"
							required>
							<option>Ultimi Lavori</option>
							<option>Offerte</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-md-5">
					<label>Titolo</label>
				</div>
				<div class="col-md-50">
					<input type="text" name="titolo" class="form-control"
						ng-model="contenuto.title" required></input>
				</div>
			</div>


			<div class="form-group row">
				<div class="col-md-5">
					<label>Foto</label>
				</div>
				<div class="col-md-50">
					 <input class="form-control" type="file" accept="image/*" file-model="immagineCaricata"/>
				</div>
			</div>
		</div>

		<button type="submit" class="btn btn-primary"
			ng-disabled="formContenuti.$invalid">Carica</button>
	</form>
	
</div>