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

	<script type="text/javascript">
	
	function Pager(tableName, itemsPerPage) {
		this.tableName = tableName;
		this.itemsPerPage = itemsPerPage;
		this.currentPage = 1;
		this.pages = 0;
		this.inited = false;
		
		this.showRecords = function(from, to) {
			var rows = document.getElementById(tableName).rows;
			// i starts from 1 to skip table header row
			for (var i = 1; i < rows.length; i++) {
				if (i < from || i > to)
				rows[i].style.display = 'none';
				else
				rows[i].style.display = '';
			}
		}
		
		this.showPage = function(pageNumber) {
		
			if (! this.inited) {
				alert("not inited");
				return;
			}
			var oldPageAnchor = document.getElementById('pg'+this.currentPage);
			oldPageAnchor.className = 'pg-normal';
			this.currentPage = pageNumber;
			var newPageAnchor = document.getElementById('pg'+this.currentPage);
			newPageAnchor.className = 'pg-selected';
			var from = (pageNumber - 1) * itemsPerPage + 1;
			var to = from + itemsPerPage - 1;
			this.showRecords(from, to);
		}
		
		this.prev = function() {
			if (this.currentPage > 1)
				this.showPage(this.currentPage - 1);
		}
		
		this.next = function() {
			if (this.currentPage < this.pages) {
				this.showPage(this.currentPage + 1);
			}
		}
		
		this.init = function() {
			var rows = document.getElementById(tableName).rows;
			var records = (rows.length - 1);
			this.pages = Math.ceil(records / itemsPerPage);
			this.inited = true;
		
		}
		
		this.showPageNav = function(pagerName, positionId) {
			if (! this.inited) {
				alert("not inited");
				return;
			}
			var element = document.getElementById(positionId);
			var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal"><< Wstecz 		</span> ';
			for (var page = 1; page <= this.pages; page++)
			pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span> ';
			pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> 		Dalej >></span>';
			element.innerHTML = pagerHtml;
		}
	
	}
	
	</script>
	

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
				<a href="home.jsp"><li>Home</li></a>
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


	<div class="footer">
		<div class="container">
			<p>Stworzone przez: Mateusz Skocz i Krzysztof Peziol</p>

		</div>


	</div>
</body>
</html>

