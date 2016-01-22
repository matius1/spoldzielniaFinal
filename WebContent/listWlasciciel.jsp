<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Wlasciciele</title>
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

			<h3>Wlasciciele</h3>
			<table id="tablepaging"  class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Imie</th>
						<th>Nazwisko</th>
						<th>Pesel</th>
						<th>Ulica</th>
						<th>Miejscowosc</th>
						<th>Numer Telefonu</th>
						<th colspan=3>Akcje</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${wlasciciele}" var="wlasciciel">
						<tr>
							<td><c:out value="${wlasciciel.wlascicielid}" /></td>
							<td><c:out value="${wlasciciel.imie}" /></td>
							<td><c:out value="${wlasciciel.nazwisko}" /></td>
							<td><c:out value="${wlasciciel.pesel}" /></td>
							<td><c:out value="${wlasciciel.ulica}" /></td>
							<td><c:out value="${wlasciciel.miejscowosc}" /></td>
							<td><c:out value="${wlasciciel.nrTel}" /></td>
							<td><a
								href="MieszkanieController?action=mieszkaniaWlasciciela&wlascicielid=<c:out value="${wlasciciel.wlascicielid}"/>"><button
										type="button" class="btn btn-info btn-sm">Mieszkania</button></a></td>
							<td><a
								href="WlascicielController?action=edit&wlascicielid=<c:out value="${wlasciciel.wlascicielid}"/>"><button
										type="button" class="btn btn-warning btn-sm">Edytuj</button></a></td>
							<td><a
								href="WlascicielController?action=delete&wlascicielid=<c:out value="${wlasciciel.wlascicielid}"/>"><button
										type="button" class="btn btn-danger btn-sm">Usun</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
				<a href="WlascicielController?action=insert"><button type="button" class="btn btn-success btn-sm">Dodaj</button></a>
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

