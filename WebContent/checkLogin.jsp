<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="org.apache.jasper.compiler.Node.ForwardAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>

	
<%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
           out.println("Checking login<br>");
            if (username == null || password == null) {
 
                out.print("Invalid paramters ");
            }
 
           	boolean a = request.getParameter(arg0);
            // Here you put the check on the username and password
            if (username.toLowerCase().trim().equals("admin") && password.toLowerCase().trim().equals("admin")) {
                out.println("Welcome " + username + " <a href=\"home.jsp\">Back to main</a>");
                
                session.setAttribute("username", username);
                
                response.sendRedirect("home.jsp");
            }
            
          
           else 
               {
                out.println("Invalid username and password");
           }
 

 
%> 


</body>
</html>