<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Mieszkania</title>
</head>
<body>

 <%@ include file="navbar.jsp" %> 

    <h3>Przypisanie mieszkania Wlascicielowi</h3>
    <%
    	int wlascicielid = Integer.parseInt(request.getParameter("wlascicielid"));
    	int mieszkanieid = 50;
    %>
    
    
    <form >
        ID Wlasciciela : <input type="text" readonly="readonly" name="mieszkanieid" value="<c:out value="${wlascicielid}" />" /> <br /> 
		
	
           <p><a href="MieszkanieController?action=addMieszkanieWlascicielowi&mieszkanieid=<c:out value="${mieszkanie.mieszkanieid}"/>&wlascicielid=<c:out value="${wlascicielid}"/>">Przypisz kolejne mieszkanie</a></p> 
    </form>
    
    <%@ include file="footer.jsp" %>
</body>
</html>

