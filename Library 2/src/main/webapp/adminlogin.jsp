<%-- 
    Document   : adminlogin
    Created on : Jul 30, 2010, 8:15:11 PM
    Author     : Raghu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String adpass=request.getParameter("pass");
            if (adpass.equals("laDEN")){
        response.sendRedirect("bookinsert.jsp");
        }
            else{
                out.println("Invalid password");
                }
    %>
    </body>
</html>
