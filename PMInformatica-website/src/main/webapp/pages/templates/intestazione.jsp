<div ng-controller="LoginController">
	<div growl></div>
	<form>
		<table width="100%">
			<tr>
				<td width="10%"></td>
				<td width="20%"><img alt="logo"
					style="background-color: white; margin-top: 2cm;"
					src="resources/images/logo_pm_informatica.png"></td>
				<td valign="bottom" width="60%" align="right">
					<table>
						<tr>
							<td width="20%" style="vertical-align: middle;"><label
								style="height: 20px; width: 75px;">Username:</label></td>
							<td width="20%" style="vertical-align: top;"><input
								type="text" style="height: 20px; width: 75px;" ng-model="utente"></td>
							<td width="20%" style="vertical-align: middle;"><label
								style="height: 20px; width: 75px;">Password:</label></td>
							<td width="20%" style="vertical-align: top;"><input
								type="password" style="height: 20px; width: 75px;"
								ng-model="password"></td>
							<td width="20%" style="vertical-align: top;">
								<button class="login-button" type="submit" value="Login"
									ng-click="login()">Login</button>
							</td>
						</tr>

					</table>
				</td>
				<td width="10%"></td>
		</table>
	</form>
	<table width="100%" ng-controller="HomeController">
		<tr>
			<td width="10%"></td>
			<td width="80%" class="navbar navbar-custom">
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
					<li ng-if="isAmministratore"
						ng-class="{ active: isActive('/contenuti')}"><a
						href="#/contenuti">Contenuti</a></li>
				</ul>
			</td>
			<td width="10%"></td>
		</tr>
	</table>
</div>
