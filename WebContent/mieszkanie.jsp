
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Mieszkanie</title>
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
			<h3>Mieszkanie</h3>



			<form method="POST" action='MieszkanieController' name="frmAddMieszkanie" class="col-md-8">
				<div class="form-group">
					<label>ID:</label> <input type="text" readonly="readonly" class="form-control" name="mieszkanieid" value="<c:out value="${mieszkanie.mieszkanieid}" />" />
				</div>
				<div class="form-group">
					<label>ID Bloku:</label> <input type="text" class="form-control" name="idBloku" value="<c:out value="${mieszkanie.idBloku}" />" /> 
				</div>
				<div class="form-group">
					<label>Nr Mieszkania:</label> <input type="text" class="form-control" name="nrMieszkania" value="<c:out value="${mieszkanie.nrMieszkania}" />" /> 
				</div>
				<div class="form-group">
					<label>Pietro:</label> <input type="text" class="form-control" name="pietro" value="<c:out value="${mieszkanie.pietro}" />" />
				</div>
				<div class="form-group">
					<label>Powierzchnia:</label> <input type="text" class="form-control" name="powierzchnia" value="<c:out value="${mieszkanie.powierzchnia}" />" />
				</div>
				<div class="form-group">
					<label>Ilosc pokoi:</label> <input type="text" class="form-control" name="iloscPokoi" value="<c:out value="${mieszkanie.iloscPokoi}" />" />
				</div>
				<div class="form-group">
					<label>Powierzchnia piwnicy:</label> <input type="text" class="form-control" name="piwnicaPow" value="<c:out value="${mieszkanie.piwnicaPow}" />" />
				</div>
				
				<button type="submit" class="btn btn-default">Zapisz</button>
			</form>

			
		</div>
	</div>


	<%@ include file="footer.jsp" %>
	
	
</body>
</html>

