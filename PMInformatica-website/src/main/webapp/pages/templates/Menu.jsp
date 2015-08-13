<div>
	<div growl></div>

	<div ng-controller="MenuController">
		<div class="navbar navbar-inverse navbar-fixed-top"
			ng-if="!isMobileDevice">
			<div class="navbar-header">
				<a href="#/home"> <img class="navbar-brand-logo"
					src="../resources/images//logo_pm_informatica.png"></a> <a
					class="navbar-brand" href="#/servizi">Servizi</a> <a
					class="navbar-brand" href="#/contatti">Contatti</a> <a
					class="navbar-brand" href="#/prenotazione">Prenotazione</a> <a
					class="navbar-brand" href="#/offerte">Offerte</a> <a
					href="#/contenuti" ng-if="isLogged">Contenuti</a> <a
					class="navbar-brand" ng-if="!isLogged" ng-click="openModal()">Login</a>
				<a class="navbar-brand" ng-if="isLogged" ng-click="logout()">Logout</a>
			</div>
		</div>

		<div ng-if="isMobileDevice">
			<div class="dropdown">
				<button style="background-color: rgb(242, 148, 0);" id="close-image"
					data-toggle="dropdown" type="button">
					<img src="../resources/images/menu_mobile_button.gif">
				</button>


				<ul class="dropdown-menu">
					<li><img style="width: 100%; padding: 2mm 2mm"
						src="../resources/images/logo_pm_informatica.png"></li>
					<br>
					<li><a href="#/home">Home</a></li>
					<li><a href="#/servizi">Servizi</a></li>
					<li><a href="#/contatti">Contatti</a></li>
					<li><a href="#/prenotazione">Prenotazione</a></li>
					<li><a href="#/galleria">Galleria</a></li>
					<li><a href="#/offerte">Offerte</a></li>
					<li><a href="#/contenuti" ng-if="isLogged">Contenuti</a></li>
					<li><a ng-if="!isLogged" ng-click="openModal()">Login</a></li>
					<li><a ng-if="isLogged" ng-click="logout()">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
