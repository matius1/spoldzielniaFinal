<%@ page import ="java.sql.*" %>




<!DOCTYPE html>
<html>
<head>
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,100'
	rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel='stylesheet' href='style.css' />
<title>Spoldzielnia Homepage</title>
</head>
<body>



	
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spoldzielnia",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    
    rs = st.executeQuery("select * from user where login='" + userid + "' and pass='" + pwd + "'");
    
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("home.jsp");
    } else {
    	%>
    	<center>
			<br></br>
			<p>Niepoprawne dane.<p>
			<br />
			<a href="login.jsp"><button type="button" class="btn btn-success">Zaloguj sie ponownie</button></a>
			</center>
		<br></br>
    	<%
        //out.println("Niepoprawne dane <a href='login.jsp'>Sprobuj ponownie</a>");
    }
%>



</body>
</html>