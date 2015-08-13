<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="pmInformaticaWebSiteAngular">
<head>
<title>Pm Informatica</title>
<jsp:include page="../templates/header.jsp" />
</head>


<body onclick="removeMe();" ng-controller="DeviceController"
	ng-init="isMobile()">




	<jsp:include page="Menu.jsp" />
	<div id="bannerCoockie">

		<div ng-if="!isMobileDevice" id="idea_cookie" class="content_block"
			class="content_block">


			<h3 style="margin-top: 10px;">Accettazione Cookie</h3>

			<div class="rtex">
				Questo Sito utilizza cookie proprietari e di terze parti al fine di
				migliorare i propri servizi. Per ulteriori informazioni o per
				scoprire come modificare la configurazione, consulta la nostra
				politica relativa ai cookie cliccando <a target="_blank"
					href="http://pminformaticashop.com/content/8-informativa-cookie">qui</a>.
				<br>Se accedi ad un qualunque elemento sottostante questo
				banner, acconsenti all'uso dei cookie.
			</div>
		</div>

		<div ng-if="isMobileDevice" id="bannerCoockie" class="content_block">
			<div class="rtex">
				Questo Sito utilizza cookie al fine di migliorare i propri servizi.
				Per saperne di più clicca <a target="_blank"
					href="http://pminformaticashop.com/content/8-informativa-cookie">qui</a>.
			</div>
		</div>
	</div>
	<div ng-class="containerClass">

		<table class="marginipagina">
			<tr>
				<td>
					<div>
						<div ng-view></div>
					</div>
				</td>
			</tr>
		</table>
		<br> <br>


		<div id="footer">
			<jsp:include page="piePagina.jsp" />
		</div>
</body>
</html>