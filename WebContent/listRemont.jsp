<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Remonty</title>
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,100'
	rel='stylesheet' type='text/css'>
<link rel='stylesheet' href='style.css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>


	<script type="text/javascript" src="Pager.js"></script>

</head>
<body>

	<div class="header">
		<div class="container">
			<h1>SPOLDZIELNIA MIESZKANIOWA</h1>
		</div>
	</div>

	 <%@ include file="navbar.jsp" %> 

	<div class="main">


		<div class="container">


			<%
				String blokid = request.getParameter("blokid");
				//out.println("blokid: " + blokid);
				if (blokid != null) {
					out.println("<h3>Remonty w bloku ID: " + blokid + " </h3>");
				} else if (blokid == null) {
					out.println("<h3>Remonty</h3>");
				}
			%>


			<table id="tablepaging"  class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Id Bloku</th>
						<th>Opis</th>
						<th>Kwota</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${remonty}" var="remont">
						<tr>
							<td><c:out value="${remont.remontid}" /></td>
							<td><c:out value="${remont.blokid}" /></td>
							<td><c:out value="${remont.opis}" /></td>
							<td><c:out value="${remont.kwota}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
				<a href="BlokController?action=insert"><button type="button" class="btn btn-success btn-sm">Dodaj</button></a>
		<div id="pageNavPosition" style="padding-top: 20px" align="center">
		</div>
	</div>
	

				
			
	
	<script type="text/javascript"><!--
	var pager = new Pager('tablepaging', 10);
	pager.init();
	pager.showPageNav('pager', 'pageNavPosition');
	pager.showPage(1);
	</script>
</div>

	<%@ include file="footer.jsp" %>
</body>
</html>

