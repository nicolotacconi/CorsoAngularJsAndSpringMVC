
<table class="table table-striped" ng-show="todos.length > 0">
	<thead>
		<th>#</th>
		<th>Description</th>
		<th></th>
	</thead>
	<tr ng-repeat="todo in todos" ng-class="{warning: todo.readonly}">
		<td><i class="icon-remove" ng-click="elimina(todo)"></i></td>
		<td>{{todo.description}}</td>
		<td><button class="btn btn-warning btn-small" type="button"
				ng-click="readonly(todo)" ng-show="!todo.readonly">READONLY</button></td>
	</tr>
</table>
<div ng-show="todos.length == 0">Nessun todo</div>
<button class="btn btn-success btn-small" type="button"
	ng-click="nuovo()">NUOVO</button>
