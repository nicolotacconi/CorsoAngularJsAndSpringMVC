<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>Attività/Pratica</th>
			<th>Stato</th>
			<th>Argomento</th>
			<th></th>
		</tr>
	</thead>
	<tr>
		<td>Attività 1</td>
		<td>Aperta</td>
		<td>XYZ1</td>
		<td><button class="btn btn-success btn-small" type="button">SELEZIONA</button></td>
	</tr>
	<tr>
		<td>Pratica 1</td>
		<td>Aperta</td>
		<td>XYZ2</td>
		<td><button class="btn btn-success btn-small" type="button">SELEZIONA</button></td>
	</tr>
	<tr>
		<td>Attività 2</td>
		<td>Aperta</td>
		<td>XYZ3</td>
		<td><button class="btn btn-success btn-small" type="button">SELEZIONA</button></td>
	</tr>
</table>
<div class="well well-small" style="background-color: white">
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<label>Note</label>
			</div>
			<div class="span10">
				<textarea style="width: 100%" rows="3" ng-model="$parent.$parent.note"></textarea>
			</div>
		</div>
	</div>
</div>
