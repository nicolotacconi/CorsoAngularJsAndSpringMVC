<div>
	<div growl></div>

	<table width="100%" ng-controller="HomeController">
		<tr>

			<td class="navbar navbar-custom">
				<ul class="nav">
					<li ng-class="{ active: isActive('/servizi')}"><a
						href="#/servizi">Servizi</a></li>
					<li ng-class="{ active: isActive('/contatti')}"><a
						href="#/contatti">Contatti</a></li>
					<li ng-class="{ active: isActive('/prenotazione')}"><a
						href="#/prenotazione">Prenotazione</a></li>
					<li ng-class="{ active: isActive('/galleria')}"><a
						href="#/galleria">Galleria</a></li>
					<li ng-class="{ active: isActive('/news')}"><a href="#/news">News</a></li>
					<li ng-if="isLogged" ng-class="{ active: isActive('/contenuti')}"><a
						href="#/contenuti">Contenuti</a></li>
					<li ng-if="!isLogged" 
						ng-click="openModal()"><a>Login</a></li>
					<li ng-if="isLogged" 
						ng-click="logout()"><a>Logout</a></li>
				</ul>
			</td>
		</tr>
	</table>
</div>
