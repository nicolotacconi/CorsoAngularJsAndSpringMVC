<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<ul class="nav nav-tabs">
	<li><a href="#cambio" data-toggle="tab">Cambio Veicolo</a></li>
	<li><a href="#variazione" data-toggle="tab">Variazione
			Anagrafica</a></li>
</ul>
<div class="tab-content">
	<div class="tab-pane active in" id="cambio">
		<div ng-include="'<spring:url value="/" />pages/cambio-veicolo'"></div>
	</div>
	<div class="tab-pane" id="variazione">
		<div
			ng-include="'<spring:url value="/" />pages/variazione-anagrafica'"></div>
	</div>
</div>
