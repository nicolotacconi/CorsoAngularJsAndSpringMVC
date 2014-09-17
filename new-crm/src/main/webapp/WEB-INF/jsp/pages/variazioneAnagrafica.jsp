<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div>
	<h4>Dettaglio Variazione Anagrafica</h4>
	<div class="row-fluid">
		<div class="span6">
			<input type="checkbox" class="pull-right"
				ng-model="modificaResidenzaContraente">
			<h5>Modifica residenza del contraente</h5>
		</div>
	</div>
	<div ng-include="'<spring:url value="/" />pages/modifica-residenza'"
		ng-show="modificaResidenzaContraente"></div>

	<div class="row-fluid">
		<div class="span6">
			<input type="checkbox" class="pull-right"
				ng-model="modificaRecapitiContraente">
			<h5>Modifica recapiti del contraente</h5>
		</div>
	</div>
	<div ng-include="'<spring:url value="/" />pages/modifica-recapiti'"
		ng-show="modificaRecapitiContraente"></div>

	<div class="row-fluid">
		<div class="span6">
			<input type="checkbox" class="pull-right"
				ng-model="modificaDomicilioContraente">
			<h5>Modifica domicilio del contraente</h5>
		</div>
	</div>
	<div ng-include="'<spring:url value="/" />pages/modifica-domicilio'"
		ng-show="modificaDomicilioContraente"></div>

	<div class="row-fluid">
		<div class="span6">
			<input type="checkbox" class="pull-right"
				ng-model="modificaResidenzaProprietario">
			<h5>Modifica residenza del proprietario</h5>
		</div>
	</div>
	<div ng-include="'<spring:url value="/" />pages/modifica-residenza'"
		ng-show="modificaResidenzaProprietario"></div>
	<h5>Informazioni</h5>
	<div class="row-fluid">
		<div class="span12">
			<label class="checkbox"> <input type="checkbox" value="">
				Canale banca
			</label> <label class="checkbox"> <input type="checkbox" value="">
				Consenso privacy
			</label>
		</div>
	</div>
	<h5>Documenti da richiedere</h5>
	<div class="row-fluid">
		<div class="span12">
			<label class="checkbox"> <input type="checkbox" value="">
				Autorizzazione addebito
			</label> <label class="checkbox"> <input type="checkbox" value="">
				Richiesta firmata dal cliente
			</label>
		</div>
	</div>


</div>
