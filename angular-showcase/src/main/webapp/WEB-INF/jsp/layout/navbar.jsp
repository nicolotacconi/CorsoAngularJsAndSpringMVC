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
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> Quickstart <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="<spring:url value="/quickstart1"/>">Quickstart
									1</a></li>
							<li><a href="<spring:url value="/quickstart2"/>">Quickstart
									2</a></li>
							<li><a href="<spring:url value="/quickstart3"/>">Quickstart
									3</a></li>
							<li><a href="<spring:url value="/quickstart4"/>">Quickstart
									4</a></li>
							<li><a href="<spring:url value="/quickstart5"/>">Quickstart
									5</a></li>
						</ul></li>
					<li><a href="<spring:url value="/crud"/>">Crud</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"> Forms <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="<spring:url value="/forms/questionario1"/>">Questionario1</a></li>
							<li><a href="<spring:url value="/forms/formcombo1"/>">Combo1</a></li>
							<li><a href="<spring:url value="/forms/beneficiari1"/>">Beneficiari1</a></li>
							<li><a href="<spring:url value="/forms/beneficiari2"/>">Beneficiari2</a></li>
							<li><a href="<spring:url value="/forms/collapsible1"/>">Collapsible1</a></li>
							<li><a href="<spring:url value="/forms/required1"/>">Required1</a></li>
							<li><a href="<spring:url value="/forms/table1"/>">Table1</a></li>
							<li><a href="<spring:url value="/forms/table2"/>">Table2</a></li>
							<!-- <li><a href="<spring:url value="/forms/autocomplete1"/>">Autocomplete1</a></li> -->
						</ul></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>