

<div class="modal-header">
	<h3 class="modal-title">Login</h3>
</div>

<div class="modal-body">
	<img alt="logo" style="background-color: white; margin-top: 0.5;"
		src="../../resources/images/logo_pm_informatica.png">
	<form>
		<table>
			<tr>
				<td valign="bottom" align="right">
					<table>
						<tr>

							<div class="form-group row">
								<label class="col-md-3">Username: </label> <input type="text"
									name="username" class="form-control input-sm"
									ng-model="utente.user" required> <label
									class="col-md-3">Password: </label> <input type="password"
									name="password" class="form-control input-sm"
									ng-model="utente.password" required>



							</div>

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




