<div>
	<div growl></div>


	<div class="navbar navbar-inverse navbar-fixed-top" ng-controller="MenuController">

		<div class="navbar-header">
			<a class="navbar-brand" href="#/servizi">Servizi</a> <a
				class="navbar-brand" href="#/contatti">Contatti</a> <a
				class="navbar-brand" href="#/prenotazione">Prenotazione</a> <a
				class="navbar-brand" href="#/galleria">Galleria</a> <a
				class="navbar-brand" href="#/news">News</a> <a href="#/contenuti"
				ng-if="isLogged">Contenuti</a> <a class="navbar-brand"
				ng-if="!isLogged" ng-click="openModal()">Login</a> <a
				class="navbar-brand" ng-if="isLogged" ng-click="logout()">Logout</a>
		</div>
	</div>

</div>
