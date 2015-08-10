<div>
	Qui puoi trovare le ultime offerte. <br> <br>
	<div ng-controller="OfferteController">


		<table>

			<tr ng-repeat="offerta in offerte">
				<td class="cell-offerte"><img ng-src="{{offerta.immagine}}" /></td>
				<td class="cell-offerte"><label>{{offerta.titolo}}</label> <br>
					<label>{{offerta.descrizione}}</label><br> <label>Prezzo:
						{{offerta.prezzo}}</label></td>
			</tr>


		</table>


	</div>
</div>