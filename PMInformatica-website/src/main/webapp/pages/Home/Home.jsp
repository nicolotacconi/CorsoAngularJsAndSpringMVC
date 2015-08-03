<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="pmInformaticaWebSiteAngular">
<head>
<title>Pm Informatica</title>
<jsp:include page="../templates/header.jsp" />
</head>
<body>

	<div id="container">
		<jsp:include page="intestazione.jsp" />

		<table class="marginipagina">
			<tr>
				<td>
					<div>
						<div ng-view></div>
					</div>
				</td>
			</tr>
		</table>
		<br>
		<br>
		<div id="footer">
			<jsp:include page="piePagina.jsp" />
		</div>
	</div>
</body>
</html>