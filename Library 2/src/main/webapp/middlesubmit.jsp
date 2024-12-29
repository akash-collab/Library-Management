

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
  
      
        <%
                    String uid = request.getParameter("user");
                    String retuid = "";
                  
  String bookName = request.getParameter("name");
                    String retbookName = "";
                    
String author = request.getParameter("author");
                    String retAuthor = "";
                    
String bookId = request.getParameter("bid");
                    String retbookId = "";
                    
Connection conn = null;
                    PreparedStatement pstm = null;
                    ResultSet rs = null;
    
                int flag1 = 0;
                    int flag2 = 0;
                   
 Date today = new Date(System.currentTimeMillis());
                    Date issueDate = new Date(0000 - 00 - 00);
        
            double months = 0.00;
                    double fine = 0.00;
                    try {
                       
 Class.forName("com.mysql.cj.jdbc.Driver");
                       //out.println("Driver Loaded");
                    
    conn = DriverManager.getConnection("jdbc:mysql://localhost/library","root","anindya@1234");

  //                      out.println(" Driver connected");
                       
 pstm = conn.prepareStatement("select username,book_id from ourbook_issue");
                       
 rs = pstm.executeQuery();
                        while (rs.next()) {
                            
retuid = rs.getString(1);
                            retbookId = rs.getString(2);
                           
 if (uid.equals(retuid) && bookId.equals(retbookId)) {
                                flag1 = 1;
    
                           
 //out.println("flag1: " + flag1);
                            }
                        }
                       
 if (flag1 == 1) {
                          
  pstm = conn.prepareStatement("select book_name,author from ourbook where book_id=?");
                      
      pstm.setString(1, bookId);
                            rs = pstm.executeQuery();
                          
  while (rs.next()) {
                                retbookName = rs.getString(1);
                           
     retAuthor = rs.getString(2);
                               
 if (bookName.equals(retbookName) && author.equals(retAuthor)) 
{
                                    flag2 = 1;
                                 
 //  out.println("flag2: " + flag2);

                                }
                            }
                        }
 

   //                    out.println("flag1 & flag2: " + flag1 + " " + flag2);
                       
 if (flag1 == 1 && flag2 == 1) {
                           
pstm = conn.prepareStatement("select issue_date from ourbook_issue where book_id=?");
                           
 pstm.setString(1, bookId);
                            rs = pstm.executeQuery();
      //                   
   out.println("<p>select issue_date Query executed</p>");
                            while (rs.next()) {
                            
    //out.println("<p>Inside loop</p>");
                                issueDate = rs.getDate(1);
                               
 //out.println("issue date: " + issueDate);
                            }
                            conn.setAutoCommit(false);
                           
 pstm = conn.prepareStatement("delete from ourbook_issue where book_id=?");
                            pstm.setString(1, bookId);
                          
  pstm.executeUpdate();
                            //out.println("<p>Row deleted from ourbook_issue table<p>");
                           
 pstm = conn.prepareStatement("update ourbook set status=? where book_id=?");
                            pstm.setString(1, "Yes");
                            
pstm.setString(2, bookId);
                            pstm.executeUpdate();
                            conn.commit();
                  
          conn.setAutoCommit(true);
                            out.println("<p>Book is successfully submitted.....</p>");
                            
pstm = conn.prepareStatement("select months_between(?,?) from dual");
                            pstm.setDate(1, today);
                           
 pstm.setDate(2, issueDate);
                            rs = pstm.executeQuery();
                      
      //out.println("<p> Months between Query executed</p>");
                            while (rs.next()) {
                                
months = rs.getDouble(1);
                                //out.println("No. of months: " + months);
                            }
                         
   if (months > 1.00) {
                                fine = (months - 1.00) * 15.00;
                               
 out.println("Your fine: " + fine);
                            } else {
                               
 out.println("<p> No fine </p>");
                            }
                        }
                        else {
                           
 out.println("Book particulars do not match...");
                        }
                    } catch (Exception e) {
                  
  }


        %>
  
      <p align="right">
            <a href="home.html"> Logout </a>
      
  </p>
    </body>
</html>
