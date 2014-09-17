<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div ng-controller="NuovaPraticaController">
	<div class="well well-small" style="background-color: white">
		<div>
			<div class="row-fluid">
				<div class="span3">Tipo</div>
				<div class="span3">
					<select style="width: 100%" ng-model="tipo">
						<option>Danni</option>
						<option>Vita</option>
					</select>
				</div>
				<div class="span3">Priorità</div>
				<div class="span3">
					<select style="width: 100%">
						<option>Alta</option>
						<option selected="selected">Media</option>
						<option>Bassa</option>
					</select>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span3">Area</div>
				<div class="span3">
					<select style="width: 100%" ng-model="areapratica">
						<option></option>
						<option>generica</option>
						<option>variazione contrattuale</option>
						<option>Area 3</option>
					</select>
				</div>
				<div class="span3">Sub-Area</div>
				<div class="span3">
					<select style="width: 100%" ng-model="subareapratica">
						<option></option>
						<option ng-show="areapratica == 'generica'">generica</option>
						<option ng-show="tipo == 'Danni' && areapratica == 'variazione contrattuale'"
							value="cambio-veicolo">cambio veicolo</option>
						<option ng-show="tipo == 'Danni' && areapratica == 'variazione contrattuale'"
							value="cambio-veicolo-indirizzo">cambio veicolo e indirizzo</option>
						<option ng-show="tipo == 'Vita' && areapratica == 'variazione contrattuale'"
							value="variazione-anagrafica">variazione indirizzo</option>
					</select>
				</div>
			</div>
		</div>
	</div>
	<div class="well well-small" style="background-color: white"
		ng-show="subareapratica == 'cambio-veicolo'">
		<div ng-include="'<spring:url value="/" />pages/cambio-veicolo'"></div>
	</div>
	<div class="well well-small" style="background-color: white"
		ng-show="subareapratica == 'cambio-veicolo-indirizzo'">
		<div ng-include="'<spring:url value="/" />pages/cambio-veicolo-indirizzo'"></div>
	</div>
	<div class="well well-small" style="background-color: white"
		ng-show="subareapratica == 'variazione-anagrafica'">
		<div
			ng-include="'<spring:url value="/" />pages/variazione-anagrafica'"></div>
	</div>
</div>