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
<title>Wlasciciel FORM</title>
</head>
<body>
    
    <form method="POST" action='WlascicielController' name="frmAddWlasciciel">
        ID : <input type="text" readonly="readonly" name="wlascicielid" value="<c:out value="${wlasciciel.wlascicielid}" />" /> <br /> 
        Imie : <input type="text" name="imie" value="<c:out value="${wlasciciel.imie}" />" /> <br /> 
        Nazwisko : <input type="text" name="nazwisko" value="<c:out value="${wlasciciel.nazwisko}" />" /> <br /> 
        Pesel : <input type="text" name="pesel" value="<c:out value="${wlasciciel.pesel}" />" /> <br /> 
        Ulica : <input type="text" name="ulica" value="<c:out value="${wlasciciel.ulica}" />" /> <br /> 
		Miejscowosc : <input type="text" name="miejscowosc" value="<c:out value="${wlasciciel.miejscowosc}" />" /> <br /> 
		Numer Telefonu : <input type="text" name="nrTel" value="<c:out value="${wlasciciel.nrTel}" />" /> <br /> 
            <input type="submit" value="Submit" />
    </form>
</body>
</html>