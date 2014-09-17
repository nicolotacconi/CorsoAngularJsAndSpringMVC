
<div ng-controller="NuovoIndirizzoController">
	<div class="row-fluid" ng-repeat="recapito in recapitiTelefonici">
		<div class="span3">
			<select style="width: 100%">
				<option></option>
				<option>Casa</option>
				<option>Cellulare</option>
				<option>Ufficio</option>
				<option>Fax</option>
				<option>Mail</option>
			</select>
		</div>
		<div class="span3">
			<input class="span3" type="text" placeholder="recapito"
				style="width: 100%">
		</div>
		<div class="span5">
			<input class="span3" type="text" placeholder="note"
				style="width: 100%">
		</div>
		<div class="span1">
			<i class="icon-minus" ng-click="rimuoviRecapitoTelefonico($index)"></i>
			<i class="icon-plus" ng-click="aggiungiRecapitoTelefonico()"
				ng-show="$last"></i>
		</div>
	</div>
</div>