<%-- 
    Document   : bookinsert
    Created on : Jul 30, 2010, 8:25:03 PM
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
        <p align="center"> Enter particulars about new book: </p>
       
 <form action="insert.jsp">
            <table align="center" border="2">
                <tr>
                    <td colspan="2">
  
                      *Book id:
                    </td>
                    <td colspan="2">
                       
 <input type="text" name="id">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">

                        *Book name:
                    </td>
                    <td colspan="2">
                      
  <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                   
 <td colspan="2">
                        *Author:
                    </td>
                    <td colspan="2">
   
                     <input type="text" name="author">
                    </td>
                <tr>
                    
<td align="center" colspan="2">
                        <input type="submit" value="Enter">
                    </td>
      
          </tr>
            </table>
        </form>
        <p align="center"> * Compulsory fields</p>
         <p align="right">
 
      <a href="home.html"><u>Logout</u></a>
        </p>
    </body>
</html>
