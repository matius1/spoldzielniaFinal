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
			<h3>
				Oplaty mieszkania:
				<%
				String mieszkanieid = request.getParameter("mieszkanieid");
				out.println(mieszkanieid);
			%>
			</h3>

			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>ID Mieszkania</th>
						<th>Miesiac</th>
						<th>Rok</th>
						<th>Czynsz</th>
						<th>Prad</th>
						<th>Woda</th>
						<th>Gaz</th>
						<th>Remontowe</th>
						<th colspan=2>Action</th>



					</tr>
				</thead>
				<tbody>
					<c:forEach items="${oplaty}" var="oplata">
						<tr>
							<td><c:out value="${oplata.oplatyid}" /></td>
							<td><c:out value="${oplata.mieszkanieid}" /></td>
							<td><c:out value="${oplata.miesiac}" /></td>
							<td><c:out value="${oplata.rok}" /></td>
							<td><c:out value="${oplata.czynsz}" /></td>
							<td><c:out value="${oplata.prad}" /></td>
							<td><c:out value="${oplata.woda}" /></td>
							<td><c:out value="${oplata.gaz}" /></td>
							<td><c:out value="${oplata.remontowe}" /></td>


							<td><a
								href="MieszkanieController?action=deleteOplata&oplataid=<c:out value="${oplata.oplatyid}"/>&mieszkanieid=<c:out value="${mieszkanieid}"/>">Usun</a></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
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

