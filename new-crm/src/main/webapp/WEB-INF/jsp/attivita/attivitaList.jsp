<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="en">
<jsp:include page="../fragments/headTag.jsp" />

<body>
	<jsp:include page="../fragments/bodyHeader.jsp" />
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span5">
			<h3>Elenco attività</h3>
				<table class="table table-striped table-bordered table-hover">
					<c:forEach var="attivita" items="${listAttivita}">
						<tr>
							<td><c:out value="${attivita.descrizione}" /></td>
							<td><c:out value="${attivita.creata}" /></td>
							<td><c:out value="${attivita.stato}" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="span7"><div class="well well-small">cisdfkl</div></div>
		</div>
	</div>
	<jsp:include page="../fragments/bodyFooter.jsp" />
</body>

</html>
