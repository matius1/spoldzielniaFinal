<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
 
     String username=(String)session.getAttribute("username");
    if(username!=null)
        {
           out.println(username+" loged out, <a href=\"index.jsp\">Back</a>");
            session.removeAttribute("username");
             
        }
     else 
         {
         out.println("You are already not login <a href=\"index.jsp\">Back</a>");
     }
 
 
 
%>  
        <h1>Logout was done successfully.</h1>
        
    </body>
</html>