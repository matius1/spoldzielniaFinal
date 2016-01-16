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
    
    <form method="POST" action='MieszkanieController' name="frmAddMieszkanie">
        ID : <input type="text" readonly="readonly" name="mieszkanieid" value="<c:out value="${mieszkanie.mieszkanieid}" />" /> <br /> 
        ID Bloku : <input type="text" name="idBloku" value="<c:out value="${mieszkanie.idBloku}" />" /> <br /> 
        Nr Mieszkania : <input type="text" name="nrMieszkania" value="<c:out value="${mieszkanie.nrMieszkania}" />" /> <br /> 
        Pietro : <input type="text" name="pietro" value="<c:out value="${mieszkanie.pietro}" />" /> <br /> 
        Powierzchnia : <input type="text" name="powierzchnia" value="<c:out value="${mieszkanie.powierzchnia}" />" /> <br /> 
        Ilość pokoi : <input type="text" name="iloscPokoi" value="<c:out value="${mieszkanie.iloscPokoi}" />" /> <br /> 
        Powierzchnia piwnicy : <input type="text" name="piwnicaPow" value="<c:out value="${mieszkanie.piwnicaPow}" />" /> <br /> 
	
            <input type="submit" value="Submit" />
    </form>
</body>
</html>

