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
         <%  String user = request.getParameter("user");
                    String bookName = request.getParameter("name");
                    String author = request.getParameter("author");
                    String bookId="";
                    Connection conn = null;
                    PreparedStatement pstm = null;
                    ResultSet rs = null;
                    int availcopy=0;
                    int issuedcopy=0;
                    int flag1 = 0;
                    int flag2 = 1;
                    Date today = new Date(System.currentTimeMillis());
                    
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                      		
                        conn = DriverManager.getConnection("jdbc:mysql://localhost/library","root","anindya@1234");
                       
                        pstm=conn.prepareStatement("select * from ourbook where book_name='"+bookName+"' and status='Yes' and author='"+author+"'");  
                        
                        rs=pstm.executeQuery();
                        while(rs.next()){
                       		bookId= rs.getString("book_id" );
                       		
                        }
                        
                           
                            pstm=conn.prepareStatement("insert into ourbookissue values(?,?,?)");
                            pstm.setString(1,user);
                            pstm.setString(2, bookId);
                            pstm.setDate(3, today);
                            pstm.executeUpdate();
                            
                            pstm=conn.prepareStatement("update ourbook set status='No' where book_id='"+bookId+"'");
                            pstm.executeUpdate();
                            
                            out.println("Succesfully book issued... ");
                            out.println("<b>Be careful to remember this bookid as you will need it during submission</b>");
                        
                          
                        
                      } catch (Exception e) {
                    }
          %>
          <p align="right">
          <a href="home.html">Logout</a>
          </p>
    </body>
</html>
