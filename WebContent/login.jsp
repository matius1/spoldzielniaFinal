<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <center>
            <h2>Signup Details</h2>
            <form action='LoginController.jsp' method="POST" action='MieszkanieController' name="frmAddMieszkanie">
	            <br/>Username:<input type="text" size=20 name="username">
	            <br/>Password:<input type="password" size=20 name="password">
	            <br/><input type="submit" value="Submit">
            </form>
        </center>
    </body>
</html>