<%-- 
    Document   : Details
    Created on : Jul 29, 2010, 5:45:37 PM
    Author     : Raghu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" import="java.sql.*" %>
<%@page language="java" import="java.util.*" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<title>JSP Page</title>
    </head>
    <body>
        <%          String uid = request.getParameter("user");
                
    String pass = request.getParameter("pass");
                    String Name = request.getParameter("name");
                  
  String Phno = request.getParameter("phno");
                    String repass = request.getParameter("repass");
                    
Connection conn = null;
                    PreparedStatement pstm = null;
                    ResultSet rs = null;
                    
String retid = null;
                    int flag = 0;
                    int flag2 = 0;
                    
if (pass.equals("") || repass.equals("") || uid.equals("") || Phno.equals("")) {
                        
out.println("Error...One/more of the compulsory fields is/are left blank");
                    } else {
    
                   
 if (pass.equals(repass)) {
                            
try {
                               
 Class.forName("com.mysql.cj.jdbc.Driver");
                              
 out.println("Driver Loaded");
                                
conn = DriverManager.getConnection("jdbc:mysql://localhost/library","root","anindya@1234");
 
                               out.println("Driver connected");
                               
 pstm = conn.prepareStatement("select username from ouruser");
                               
 rs = pstm.executeQuery();
                                while (rs.next()) {
  
                                  

retid = rs.getString(1);
                                    if (uid.equals(retid)) {
                                        
flag = 1;
                                        out.println(retid);
                                        
out.println("username already exists");
                                  
  }
                                }
                                if (flag == 0) {
   

                               
  pstm = conn.prepareStatement("insert into ouruser values(?,?,?,?)");
                                   
 pstm.setString(1, uid);
                                    pstm.setString(2, pass);
                                   
 pstm.setString(3, Name);
                                    pstm.setString(4, Phno);
                               
     pstm.executeUpdate();
                                    out.println("Succesfully account created.");
  
                              }


                            } catch (Exception e) {
                          
  	System.err.println(e.getMessage());
                            	e.printStackTrace();
                        
    }
                        } else {
                            out.println("Error... password is retyped wrongly...");
 
                       }
                    } 


        %>
        <p align="right">
           
 <a href="home.html"><u>Go back to home page</u></a>
        
</p>
    </body>
</html>

