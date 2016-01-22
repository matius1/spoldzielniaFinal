
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Wlasciciel</title>
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

	 <%@ include file="navbar.jsp" %> 

	<div class="main">


		<div class="container">
			<h3>Wlasciciel</h3>



			<form method="POST" action='WlascicielController' name="frmAddWlasciciel" class="col-md-8">
				<div class="form-group">
					<label>ID:</label> <input type="text" readonly="readonly" class="form-control" name="wlascicielid" value="<c:out value="${wlasciciel.wlascicielid}" />" />
				</div>
				<div class="form-group">
					<label>Imie:</label> <input type="text" class="form-control"  name="imie" value="<c:out value="${wlasciciel.imie}" />" />
				</div>
				<div class="form-group">
					<label>Nazwisko:</label> <input type="text" class="form-control" name="nazwisko" value="<c:out value="${wlasciciel.nazwisko}" />" />
				</div>
				<div class="form-group">
					<label>Pesel:</label> <input type="text" class="form-control" name="pesel" value="<c:out value="${wlasciciel.pesel}" />" />
				</div>
				<div class="form-group">
					<label>Ulica:</label> <input type="text" class="form-control"  name="ulica" value="<c:out value="${wlasciciel.ulica}" />" />
				</div>
				<div class="form-group">
					<label>Miejscowosc:</label> <input type="text" class="form-control" name="miejscowosc" value="<c:out value="${wlasciciel.miejscowosc}" />" /> 
				</div>
				
				<div class="form-group">
					<label>Numer Telefonu:</label> <input type="text" class="form-control" name="nrTel" value="<c:out value="${wlasciciel.nrTel}" />" />
				</div>
				
				<button type="submit" class="btn btn-default">Zapisz</button>
			</form>

			
		</div>
	</div>


	<%@ include file="footer.jsp" %>
	
</body>
</html>

