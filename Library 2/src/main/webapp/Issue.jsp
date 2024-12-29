


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 
  "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>JSP Page</title>
    </head>
    <body>
      <form action="middleissue.jsp" method="post">
       
     <table align="center" border="2">

                <tr>
                    <td>
                     
   *Name of book: <input type="text" name="name">
                    </td>
                    <td>
                  
      *Author: <input type="text" name="author">
                    </td>
                </tr>
              
  <tr>
                    <td align="center">
                        <input type="submit" value="Issue">
        
            </td>
                    <td align="center">
                        <input type="reset" value="Reset">
  
                  </td>
                    
                        
                </tr>
            </table>
    
      <input type="hidden" name="user" value="${param.user}">
        </form>
        <p align="center"> 
* Compulsory fields</p>
        <p align ="center"><b> Be careful all fields are case sensitive </b></p>
    
    <p align="right">
        <a href="home.html"><u>Logout</u></a>
        </p>
  
  </body>
</html>
