
<!DOCTYPE html>
<html>
	<script src="personController.js"></script>
	<script src="myFunzioneRicerca.js"></script>

<body onload="appInit();">

	<p>inserisci i nomi e ricerca</p>
	
	<div >

		First Name: <input type="text" id="firstInput"  name="firstNameInput" placeholder= "Jhon" onkeyup="aggiorna()" ><br>
		Last Name:  <input type="text" id="lastInput"  name="lastNameInput" placeholder="Doe" onkeyup="aggiorna()" ><br> <br>
		Full Name: <p id="output"></p>

		<button onclick="aggiungiPersona(fullNameUpp())">Aggiungi</button>
			
			<br/>
		
		<table border="0" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					<td>
						<input type="text" size="30" maxlength="1000" value="" id="stringaRicerca" onkeyup="filtra(event);" />
						<input type="button" value="Cerca" onclick="funzioneRicerca();"/> 
					</td>
				</tr>
			</tbody>
		</table>

		<br/>
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<th>nomi</th>	
			</tr>
			<tbody id="data">
				<tr>
					<td align="right">--</td>
				</tr>
			</tbody>
		</table>
	</div>
	




  
</body>
</html>

