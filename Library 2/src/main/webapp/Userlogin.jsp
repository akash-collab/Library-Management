<%-- 
    Document   : Userlogin
    Created on : Jul 30, 2010, 11:28:45 AM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page import="java.util.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
 <title>JSP Page</title>
    </head>
    <body>
        
      <form action="WorkSelect.jsp" method ="post">
 
          <table align="center" border="2">
                <tr>
                    <td>
                   
     Select
                    </td>
                    <td colspan="2">
                       
 <select name="worktype">
                            <option >
                              
  Book Availability
                            </option>
                          
  <option>
                                Issue
                           
 </option>
                            <option>
                               
 Submit
                            </option>   
                        </select>
 
                   </td>
                </tr>
                <tr>
                    <td>
  
                      <input type="hidden" name = "user" value="${param.user}">
                
  </td>
                    <td colspan="2" align="center"> 
                       
 <input type="submit" value="Enter">
                   </td>
                   
       
         </tr>
            </table>
        </form>
         <p align="right">
      
  <a href="home.html"><u>Logout</u></a>
      
  </p>
    </body>
</html>
