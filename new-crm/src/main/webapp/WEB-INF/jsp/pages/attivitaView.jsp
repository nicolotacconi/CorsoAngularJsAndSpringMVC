
<div class="well well-small" style="background-color: white">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">Stato</div>
			<div class="span4">{{attivitaSelected.stato}}</div>
			<div class="span6"></div>
		</div>
		<div class="row-fluid">
			<div class="span2">Tipo</div>
			<div class="span4">{{attivitaSelected.tipo}}</div>
			<div class="span2">Pratica</div>
			<div class="span4">
				<a ng-show="attivitaSelected.praticaCollegata != '-'" href="#">{{attivitaSelected.praticaCollegata}}</a>
				<span ng-show="attivitaSelected.praticaCollegata == '-'">{{attivitaSelected.praticaCollegata}}</span>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span2">Apertura</div>
			<div class="span4">
				{{attivitaSelected.apertura|date:'dd-MM-yyyy'}}</div>
			<div class="span2">Chiusura</div>
			<div class="span4"></div>
		</div>
		<div class="row-fluid">
			<div class="span2">Assegnata a</div>
			<div class="span4">{{attivitaSelected.assegnata}}</div>
			<div class="span2">Creata da</div>
			<div class="span4">{{attivitaSelected.creataDa}}</div>
		</div>
		<div class="row-fluid">
			<div class="span2">Argomento</div>
			<div class="span4">{{attivitaSelected.argomento}}</div>
			<div class="span6"></div>
		</div>
		<div class="row-fluid">
			<div class="span2">
				<label><b>Note</b></label>
			</div>
			<div class="span10"></div>
		</div>
		<table class="table table-striped">
			<tr ng-repeat="nota in attivitaSelected.note">
				<td><i class="icon-user"></i></td>
				<td>{{nota.autore}}</td>
				<td>{{nota.creata | date:'dd-MM-yyyy HH:mm'}}</td>
				<td>{{nota.nota}}</td>
			</tr>

		</table>
		<div class="row-fluid" ng-show="aggiungiNotaVisible">
			<div class="span10">
				<textarea rows="3" style="width: 100%"></textarea>
			</div>
			<div class="span2">
				<button class="btn btn-success"
					ng-click="aggiungiNotaVisible = false">SALVA</button>
			</div>
		</div>
		<div class="row-fluid" ng-show="!aggiungiNotaVisible">
			<div class="pull-right">

				<a href="#" class="pull-right" ng-click="aggiungiNotaVisible = true">aggiungi
					nota</a>
			</div>
			<div class="span10"></div>
		</div>
	</div>
</div>
