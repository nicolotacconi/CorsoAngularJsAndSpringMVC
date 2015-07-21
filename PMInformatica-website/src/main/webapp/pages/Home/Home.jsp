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
		<jsp:include page="../templates/intestazione.jsp" />

		<table width="100%">
			<tr>
				<td width="10%"></td>
				<td width="80%">
					<div ng-view class="scrollable"></div>
					<div id="footer">
						<jsp:include page="../templates/piePagina.jsp" />
					</div>
				</td>
				<td width="10%"></td>
			</tr>
		</table>



	</div>
</body>
</html>