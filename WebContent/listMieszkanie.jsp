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

			<%
				String wlascicielid = request.getParameter("wlascicielid");
				String blokid = request.getParameter("blokid");
				out.println("wlasciciel: " + wlascicielid);
				out.println("blokid: " + blokid);
				if (wlascicielid != null) {
					out.println("<h3>Mieszkania Wlasciciela o ID: " + wlascicielid + " </h3>");
				} else if (blokid != null) {
					out.println("<h3>Mieszkania w bloku ID: " + blokid + " </h3>");
				} else if (wlascicielid == null && blokid == null) {
					out.println("<h3>Lista Mieszkan</h3>");
				}
			%>

			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nr Mieszkania</th>
						<th>Pietro</th>
						<th>Powierzchnia</th>
						<th>Ilosc Pokoi</th>
						<th>Powierzchnia Piwnicy</th>
						<th>ID Bloku</th>
						<th>Ulica</th>
						<th>Ulica nr</th>
						<th>Miejscowosc</th>


						<th colspan=2>Action</th>



					</tr>
				</thead>
				<tbody>
					<c:forEach items="${mieszkania}" var="mieszkanie">
						<tr>
							<td><c:out value="${mieszkanie.mieszkanieid}" /></td>
							<td><c:out value="${mieszkanie.nrMieszkania}" /></td>
							<td><c:out value="${mieszkanie.pietro}" /></td>
							<td><c:out value="${mieszkanie.powierzchnia}" /></td>
							<td><c:out value="${mieszkanie.iloscPokoi}" /></td>
							<td><c:out value="${mieszkanie.piwnicaPow}" /></td>
							<td><c:out value="${mieszkanie.idBloku}" /></td>
							<td><c:out value="${mieszkanie.ulica}" /></td>
							<td><c:out value="${mieszkanie.ulicaNr}" /></td>
							<td><c:out value="${mieszkanie.miejscowosc}" /></td>

							<td><a
								href="MieszkanieController?action=oplaty&mieszkanieid=<c:out value="${mieszkanie.mieszkanieid}"/>">Oplaty</a></td>
							<%
								if (wlascicielid == null && blokid == null) {
							%>
							<td><a
								href="MieszkanieController?action=edit&mieszkanieid=<c:out value="${mieszkanie.mieszkanieid}"/>">Edytuj</a></td>
							<td><a
								href="MieszkanieController?action=delete&mieszkanieid=<c:out value="${mieszkanie.mieszkanieid}"/>">Usun</a></td>
							<%
								} else if (wlascicielid != null) {
							%>
							<td><a
								href="MieszkanieController?action=deleteMieszkanieFromWlasciciel&mieszkanieid=<c:out value="${mieszkanie.mieszkanieid}"/>&wlascicielid=<c:out value="${wlascicielid}"/>">Usun
									wlascicielowi</a></td>
							<%
								}
							%>

						</tr>
					</c:forEach>
				</tbody>
			</table>


			<%
				if (wlascicielid == null && blokid == null) {
			%>
			<p>
				<a href="MieszkanieController?action=insert">Dodaj</a>
			</p>
			<%
				} else {
					//<p><a href="MieszkanieController?action=sendToaddMieszkanieWlascicielowi&wlascicielid=<c:out value="${wlascicielid}"/>">Przypisz kolejne mieszkanie</a></p> 

				}
			%>
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

