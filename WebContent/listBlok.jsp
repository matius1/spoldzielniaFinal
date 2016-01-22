<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Bloki</title>
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
			<h3>Bloki</h3>
			<table id="tablepaging"  class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Ulica</th>
						<th>Ulica NR</th>
						<th>Miejscowosc</th>
						<th></th>
						<th></th>
						<th></th>
						<th colspan=2 text-align: right>Akcje</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${bloki}" var="blok">
						<tr>
							<td><c:out value="${blok.blokid}" /></td>
							<td><c:out value="${blok.ulica}" /></td>
							<td><c:out value="${blok.ulica_nr}" /></td>
							<td><c:out value="${blok.miejscowosc}" /></td>
							<td></td>
							<td></td>
							<td></td>
							<td><input type="button" value="Mapka"
								class="btn btn-default btn-sm"
								onclick="window.open('https://www.google.pl/maps/place/<c:out value="${blok.ulica}"/>+<c:out value="${blok.ulica_nr}"/>+<c:out value="${blok.miejscowosc}"/>')" />
								<a href="MieszkanieController?action=mieszkaniaWBloku&blokid=<c:out value="${blok.blokid}"/>"><button
										type="button" class="btn btn-info btn-sm">Mieszkania</button></a>
								<a href="BlokController?action=remontyWBloku&blokid=<c:out value="${blok.blokid}"/>">
									<button type="button" class="btn btn-info btn-sm">Remonty</button> </a> 
								<a href="BlokController?action=edit&blokid=<c:out value="${blok.blokid}"/>">
									<button type="button" class="btn btn-warning btn-sm">Edytuj</button></a> 
								<a href="BlokController?action=delete&blokid=<c:out value="${blok.blokid}"/>">
									<button type="button" class="btn btn-danger btn-sm">Usun</button></a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
				
			</table>
			<a href="BlokController?action=insert"><button type="button" class="btn btn-success btn-sm">Dodaj</button></a>
			<div id="pageNavPosition" style="padding-top: 20px" align="center">
		</div>
	</div>
	</div>

				
			
	
	<script type="text/javascript"><!--
	var pager = new Pager('tablepaging', 10);
	pager.init();
	pager.showPageNav('pager', 'pageNavPosition');
	pager.showPage(1);
	</script>


	<%@ include file="footer.jsp" %>
</body>
</html>

