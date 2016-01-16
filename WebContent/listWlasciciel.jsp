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
				<a href="indexRemonty.jsp"><li>Remonty</li></a>
				<a href="#"><li>Kontakt</li></a>
			</ul>
		</div>

	</div>

	<div class="main">



		<div class="container">
			<p>
				<a href="WlascicielController?action=insert">Dodaj</a>
			</p>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Imie</th>
						<th>Nazwisko</th>
						<th>Pesel</th>
						<th>Ulica</th>
						<th>Miejscowosc</th>
						<th>Numer Telefonu</th>
						<th colspan=2>Action</th>
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
								href="MieszkanieController?action=mieszkaniaWlasciciela&wlascicielid=<c:out value="${wlasciciel.wlascicielid}"/>">Mieszkania</a></td>
							<td><a
								href="WlascicielController?action=edit&wlascicielid=<c:out value="${wlasciciel.wlascicielid}"/>">Edytuj</a></td>
							<td><a
								href="WlascicielController?action=delete&wlascicielid=<c:out value="${wlasciciel.wlascicielid}"/>">Usun</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<p>
				<a href="WlascicielController?action=insert">Dodaj</a>
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

