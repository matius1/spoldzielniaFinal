<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Oplaty</title>
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
			<h3>
				Oplaty mieszkania:
				<%
				String mieszkanieid = request.getParameter("mieszkanieid");
				out.println(mieszkanieid);
			%>
			</h3>

			<table id="tablepaging"  class="table table-hover">
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
						<th>Akcje</th>



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
								href="MieszkanieController?action=deleteOplata&oplataid=<c:out value="${oplata.oplatyid}"/>&mieszkanieid=<c:out value="${mieszkanieid}"/>"><button
										type="button" class="btn btn-danger btn-sm">Usun</button></a></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
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

