<div>
	<h1 class="titoloPagina" id="indexServizi">Le nostre ultime offerte</h1><br> <br>
	<div ng-controller="OfferteController">


		<table ng-init="getOfferte()">

			<tr ng-repeat="offerta in offerte">
				<td class="cell-offerte"><img ng-src="data:image/jpg;base64,{{offerta.image}}" /></td>
				<td class="cell-offerte"><label>{{offerta.title}}</label> <br>
					<label>{{offerta.description}}</label><br> <label>Prezzo:
						{{offerta.price}}</label></td>
			</tr>


		</table>


	</div>
</div>