<%-- 
    Document   : userhome
    Created on : Jul 29, 2010, 5:15:44 PM
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
        <form action="login.jsp" method="post">
            
<table align="center" border="2">
                <tr>
                    <td>
                       
 Username:<input type="text" name="user">
                    </td>
                </tr>
              
  <tr>
                    <td>
                        Password: <input type="password" name="pass">
         
           </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
 
                      <input type="submit" value="Sign in">
                    </td>
                </tr>
    
        </table>
        </form>
        <p align="center">
            <a href="account_info.jsp">Create an account</a></p>
  
      <p align="right">
            <a href="home.html">Go back to home page </a>
       
</p>
    </body>
</html>
