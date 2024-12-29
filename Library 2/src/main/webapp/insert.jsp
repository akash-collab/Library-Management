<%-- 
    Document   : insert
    Created on : Jul 30, 2010, 8:37:07 PM
    Author     : Raghu
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   
 "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>


<html>
    <head>
       
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
 <title>JSP Page</title>
    </head>
    <body>
        <%          String id = request.getParameter("id");
                   
 String name = request.getParameter("name");
                    String author = request.getParameter("author");
  
                  Connection conn = null;
                    PreparedStatement pstm = null;
                    
ResultSet rs = null;
                    String retid = null;
                    int flag = 0;
                    
if (id.equals("") || name.equals("") || author.equals("")) {
                        
out.println("Error....One/more compulsory fields is/are left blank");
                    } 
else {
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");

                            //out.println("Driver Loaded");
                            
conn = DriverManager.getConnection("jdbc:mysql://localhost/library","root","anindya@1234");
                       
     //out.println("Driver connected");
                           
 pstm = conn.prepareStatement("select book_id from ourbook");
                           
 rs = pstm.executeQuery();
                            while (rs.next()) {
                                
retid = rs.getString(1);
                                if (id.equals(retid)) {
                                 
   flag = 1;
                                    out.println(retid);
                                  
  out.println("book_id already exists");
                                }
                            }
 
                           if (flag == 0) {
                                
pstm = conn.prepareStatement("insert into ourbook values(?,?,?,?)");
                                
pstm.setString(1, id);
                                pstm.setString(2, name);
                              
  pstm.setString(3, author);
                                pstm.setString(4, "Yes");
                             
   pstm.executeUpdate();
                                out.println("Succesfully book inserted");
                      
      }

                        } catch (Exception e) {
                        }
                    }


        %>
     
   <p align="right">
            <a href="home.html"><u>Logout</u></a>
        </p>
    
</body>
</html>

