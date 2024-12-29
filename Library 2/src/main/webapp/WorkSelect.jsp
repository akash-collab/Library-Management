


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
   <title>JSP Page</title>
    </head>
    <body>
        
        
<c:set var="worktype" value="${param.worktype}" scope="session"/>
    
<c:if test="${worktype eq 'Book Availability'}">
        
<b> Book Availability </b>

        
<c:import url="avail.jsp">
        
<c:param name="user" value="${param.user}"></c:param>
    </c:import>

        
   
 </c:if>  
    <c:if test="${worktype eq 'Issue'}">
        <b> Book Issue </b>
   
     <c:import url="Issue.jsp">
        <c:param name="user" value="${param.user}"></c:param>

    </c:import>
        
    </c:if>
    <c:if test="${worktype eq 'Submit'}">
       
 <b> Book Submit </b>
        <c:import url="Submit.jsp">
  <c:param name="user" value="${param.user}"></c:param>
 
 </c:import>
      
    </c:if>
        
 
 </body>

</html>
