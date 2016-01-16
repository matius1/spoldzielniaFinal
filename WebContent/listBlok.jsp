<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
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

</head>
<body>

	<div class="header">
		<div class="container">
			<h1>SPOLDZIELNIA MIESZKANIOWA</h1>
		</div>
	</div>

	<div class="nav">
		<div class="container">
			<ul>
				<a href="indexPracownicy.jsp">
					<li>Pracownicy</li>
				</a>
				<a href="indexWlasciciele.jsp"><li>Wlasciciele</li></a>
				<a href="indexMieszkania.jsp"><li>Mieszkania</li></a>
				<a href="indexBloki.jsp"><li>Bloki</li></a>
				<a href="#"><li>Kontakt</li></a>
			</ul>
		</div>

	</div>

	<div class="main">


		<div class="container">
			<p>
				<a href="BlokController?action=insert">Dodaj</a>
			</p>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Ulica</th>
						<th>Ulica NR</th>
						<th>Miejscowosc</th>
						<th colspan=2>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${bloki}" var="blok">
						<tr>
							<td><c:out value="${blok.blokid}" /></td>
							<td><c:out value="${blok.ulica}" /></td>
							<td><c:out value="${blok.ulica_nr}" /></td>
							<td><c:out value="${blok.miejscowosc}" /></td>

							<td><input type="button" value="Mapka"
								onclick="window.open('https://www.google.pl/maps/place/<c:out value="${blok.ulica}"/>+<c:out value="${blok.ulica_nr}"/>+<c:out value="${blok.miejscowosc}"/>')" /></td>
							<td><a
								href="MieszkanieController?action=mieszkaniaWBloku&blokid=<c:out value="${blok.blokid}"/>">Mieszkania</a></td>
							<td><a
								href="BlokController?action=edit&blokid=<c:out value="${blok.blokid}"/>">Edytuj</a></td>
							<td><a
								href="BlokController?action=delete&blokid=<c:out value="${blok.blokid}"/>">Usun</a></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
			<p>
				<a href="BlokController?action=insert">Dodaj</a>
			</p>
		</div>
	</div>





		<div class="jumbotron">
			<div class="container">
				<h2>Stay Connected</h2>
				<p>Receive weekly insights from industry insiders.</p>

				<a href="#">Join</a>


			</div>

		</div>

		<div class="footer">
			<div class="container">
				<p>© Innovation Cloud Conference</p>

			</div>


		</div>
</body>
</html>

