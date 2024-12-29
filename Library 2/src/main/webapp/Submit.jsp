<%-- 
    Document   : Submit
    Created on : Aug 1, 2010, 10:41:04 AM
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
        <form action="middlesubmit.jsp" method="post">
          
  <table align="center" border="2">
                <tr>
                    
<td colspan="2">
                        *BookId:
                    </td>
                    <td colspan="2">
  
                      <input type="text" name="bid">
                    </td>
                </tr>
               
 <tr>
                    <td colspan="2">
                        *BookName:
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
                </tr>
                <tr>
                    <td colspan="2" align="center">
                      
  <input type="submit" value="Submit">
                    </td>
                </tr>
            </table>
          
 <input type="hidden" value=${param.user} name="user">
        </form>
        <p align="center"> * Compulsory fields</p>

        <p align ="center"><b> Be careful all fields are case sensitive </b></p>
        <p align="right">
        
<a href="home.html"> Logout </a>
       
 </p>
    </body>
</html>


