

<div class="modal-header">
	<h3 class="modal-title">Login</h3>
</div>

<div class="modal-body" ng-controller="LoginController">
	<img alt="logo" style="background-color: white; margin-top: 0.5;"
		src="../../resources/images/logo_pm_informatica.png">
	<form>
		<table>
			<tr>
				<td valign="bottom" align="right">
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
				
		</table>
	</form>
</div>




