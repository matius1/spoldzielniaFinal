


<!DOCTYPE html>
<html>
<head>
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,100' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel='stylesheet' href='style.css' />
	<title>Spoldzielnia Homepage</title>
</head>
<body>



	<div class="header">
		<div class="container">
			<h1>SPOLDZIELNIA MIESZKANIOWA</h1>
		</div>
	</div>

	<%@ include file="navbar.jsp"%>


	<%
		if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
	%>
	<%@ include file="notLogged.jsp"%>
	
	<%
		} else {
	%>


	<div class="main">
		<div class="container">
		<h3>Witaj:  <%=session.getAttribute("userid")%></h3>
			<h1>aaaaa</h1>



		</div>
	</div>
	<%
		}
	%>
	

	<%@ include file="footer.jsp"%>

</body>
</html>