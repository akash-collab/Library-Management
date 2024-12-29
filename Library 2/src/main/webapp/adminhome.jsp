<%-- 
    Document   : adminhome
    Created on : Jul 30, 2010, 8:05:23 PM
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
        <form action="adminlogin.jsp" method="post">
            <table align="center" border="2">

                <tr>
                    <td>
                        Password: <input type="password" name="pass">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="SignIn">
                    </td>
                </tr>
            </table>
        </form>
        <p align="right">
            <a href="home.html">Go back to home page </a>
    </body>
</html>
