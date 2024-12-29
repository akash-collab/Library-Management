

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 
  
 </head>
    <body>
        <%
                    String uid = request.getParameter("user");
                   
 String pass = request.getParameter("pass");
                    Connection conn = null;
                 
   PreparedStatement pstm = null;
                    ResultSet rs = null;
                    
String retid = null;
                    String retpass = null;
                    int flag = 0;
                    try {
   
                     Class.forName("com.mysql.cj.jdbc.Driver");
//                        out.println("loaded");
 
                        conn = DriverManager.getConnection("jdbc:mysql://localhost/library","root","anindya@1234");
                       
 pstm = conn.prepareStatement("select username,password from ouruser");
                        rs = pstm.executeQuery();
                      
  while (rs.next()) {
                            retid = rs.getString(1);
                            retpass = rs.getString(2);

            
                if (uid.equals(retid) && pass.equals(retpass)) {
                                //out.println(retid);
                          
      //out.println(retpass);
                                flag = 1;
                               

                          
  }
                        }

                        if (flag == 0 ) {
                            response.sendRedirect("Error1.jsp");
 
                       }
                    } catch (Exception e) {
                    }

        %>
     
   <c:import url="Userlogin.jsp"> 
   <c:param name="user" value="${param.user}"></c:param>
   </c:import>
           
   
        
   
 </body>
</html>
