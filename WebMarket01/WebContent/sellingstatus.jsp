<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    
    //넘어온 값 받기
    String status = request.getParameter("did");
    
    String sql = "UPDATE delivery SET [dstatus] = '+=1' WHERE [=did]";
   
    
	%>
	
	    
    

    
    
    DAOdelivery.statusup("did");
    
    
    
    %>
    
   


    