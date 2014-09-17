<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<h2>Polizza {{tab.polizza.numero}}</h2>

<div class="bs-docs-example">
	<ul id="myTab" class="nav nav-pills">
		<li class="active"><a href="#riepilogo_{{tab.polizza.id}}"
			data-toggle="tab">Riepilogo</a></li>
		<li class=""><a href="#dettaglio_{{tab.polizza.id}}"
			data-toggle="tab">Dettaglio</a></li>
		<li class=""><a href="#figure_{{tab.polizza.id}}"
			data-toggle="tab">Figure contrattuali</a></li>
		<li class=""><a href="#titoli_{{tab.polizza.id}}"
			data-toggle="tab">Titoli emessi</a></li>
		<li class=""><a href="#fenomeni_{{tab.polizza.id}}"
			data-toggle="tab">Fenomeni</a></li>
		<li class=""><a href="#classi_{{tab.polizza.id}}"
			data-toggle="tab">Classi di merito</a></li>
		<li class=""><a href="#attivita_{{tab.polizza.id}}"
			data-toggle="tab">Attività/pratiche</a></li>
		<li class=""><a href="#documenti_{{tab.polizza.id}}"
			data-toggle="tab">Documenti</a></li>
	</ul>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade active in" id="riepilogo_{{tab.polizza.id}}">
			<div>
				<div class="row-fluid">
					<div class="span5">Numero</div>
					<div class="span7">{{tab.polizza.numero}}</div>
				</div>
				<div class="row-fluid">
					<div class="span5">Prodotto</div>
					<div class="span7">{{tab.polizza.prodotto}}</div>
				</div>
				<div class="row-fluid">
					<div class="span5">Decorrenza</div>
					<div class="span7">{{tab.polizza.decorrenza}}</div>
				</div>
			</div>
			<h4>Contatti polizza</h4>
			<div
				ng-include="'<spring:url value="/" />pages/contatti-cliente-list'"></div>
		</div>
		<div class="tab-pane fade" id="dettaglio_{{tab.polizza.id}}">
			<div>
				<div class="row-fluid">
					<div class="span5">Numero</div>
					<div class="span7">{{tab.polizza.numero}}</div>
				</div>
				<div class="row-fluid">
					<div class="span5">Prodotto</div>
					<div class="span7">{{tab.polizza.prodotto}}</div>
				</div>
				<div class="row-fluid">
					<div class="span5">Decorrenza</div>
					<div class="span7">{{tab.polizza.decorrenza}}</div>
				</div>
			</div>
		</div>
		<div class="tab-pane fade" id="figure_{{tab.polizza.id}}">
			<h4>Figure contrattuali</h4>
			<p>ajah skfhd kjahsdfhasdh fjka hsdf haksjl hdfkaj sdfh askdh
				fjka shdfljhaklsd hfajk hsdfk hasklj fhdlka shdfjk</p>
		</div>
		<div class="tab-pane fade" id="titoli_{{tab.polizza.id}}">
			<h4>Titoli emessi</h4>
			<p>ajah skfhd kjahsdfhasdh fjka hsdf haksjl hdfkaj sdfh askdh
				fjka shdfljhaklsd hfajk hsdfk hasklj fhdlka shdfjk</p>
		</div>
		<div class="tab-pane fade" id="fenomeni_{{tab.polizza.id}}">
			<h4>Fenomeni</h4>
			<p>ajah skfhd kjahsdfhasdh fjka hsdf haksjl hdfkaj sdfh askdh
				fjka shdfljhaklsd hfajk hsdfk hasklj fhdlka shdfjk</p>
		</div>
		<div class="tab-pane fade" id="classi_{{tab.polizza.id}}">
			<h4>Classi di merito</h4>
			<p>ajah skfhd kjahsdfhasdh fjka hsdf haksjl hdfkaj sdfh askdh
				fjka shdfljhaklsd hfajk hsdfk hasklj fhdlka shdfjk</p>
		</div>
		<div class="tab-pane fade" id="attivita_{{tab.polizza.id}}">
			<h4>Attività</h4>
			<table class="table table-striped table-bordered table-hover">
				<tr ng-repeat="attivita in tab.polizza.elencoAttivita">
					<td>{{attivita.creata}}</td>
					<td>{{attivita.descrizione}}</td>
					<td>{{attivita.stato}}</td>
					<td><button class="btn btn-success btn-small" type="button"
							ng-click="viewAttivita(attivita)">SELEZIONA</button></td>
				</tr>
			</table>
			<h4>Pratiche</h4>
			<table class="table table-striped table-bordered table-hover">
				<tr ng-repeat="pratica in tab.polizza.pratiche">
					<td>{{pratica.apertura}}</td>
					<td>{{pratica.descrizione}}</td>
					<td>{{pratica.stato}}</td>
					<td><button class="btn btn-success btn-small" type="button"
							ng-click="viewPratica(pratica)">SELEZIONA</button></td>
				</tr>
			</table>
		</div>
		<div class="tab-pane fade" id="documenti_{{tab.polizza.id}}">
			<h4>Documenti</h4>
			<p>ajah skfhd kjahsdfhasdh fjka hsdf haksjl hdfkaj sdfh askdh
				fjka shdfljhaklsd hfajk hsdfk hasklj fhdlka shdfjk</p>
		</div>

	</div>
</div>
