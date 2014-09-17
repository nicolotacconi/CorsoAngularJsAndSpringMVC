<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<button type="button" class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="brand" href="<spring:url value="/"/>">Home</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li><a
						href="<spring:url value="/pages/new-inbound-accordion4"/>">Nuova
							Inbound</a></li>
					<li><a href="<spring:url value="/pages/gestione-attivita8"/>">Gestione
							Attivit&agrave;</a></li>
					<li><a href="<spring:url value="/pages/gestione-pratiche2"/>">Gestione
							Pratiche</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" />Gestione Fax<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<spring:url value="/pages/gestione-fax"/>">Versione
									1</a></li>
						</ul></li>
					</li>
					<li><a href="<spring:url value="/showcase/index"/>">Showcase</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" />Old<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="<spring:url value="/pages/new-inbound"/>">Nuova
									Inbound</a></li>
							<li><a
								href="<spring:url value="/pages/new-inbound-accordion"/>">Nuova
									Inbound (Accordion)</a></li>
							<li><a
								href="<spring:url value="/pages/new-inbound-accordion2"/>">Nuova
									Inbound (Accordion 2)</a></li>
							<li><a
								href="<spring:url value="/pages/new-inbound-accordion3"/>">Nuova
									Inbound (Accordion 3)</a></li>
							<li><a href="<spring:url value="/pages/gestione-attivita"/>">Versione
									1</a></li>
							<li><a
								href="<spring:url value="/pages/gestione-attivita2"/>">Versione
									2</a></li>
							<li><a
								href="<spring:url value="/pages/gestione-attivita3"/>">Versione
									3</a></li>
							<li><a
								href="<spring:url value="/pages/gestione-attivita4"/>">Versione
									4</a></li>
							<li><a
								href="<spring:url value="/pages/gestione-attivita5"/>">Versione
									5</a></li>
							<li><a
								href="<spring:url value="/pages/gestione-attivita6"/>">Versione
									6</a></li>
							<li><a
								href="<spring:url value="/pages/gestione-attivita7"/>">Versione
									7</a></li>
							<li><a href="<spring:url value="/attivita/mylist"/>">Mie</a></li>
							<li><a href="<spring:url value="/attivita/new"/>">New</a></li>
							<li><a href="<spring:url value="/pages/gestione-pratiche"/>">Versione
									1</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>
