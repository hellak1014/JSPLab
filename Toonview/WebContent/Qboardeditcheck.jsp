<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@page import="util.*"%>

<%@ page import="DB.*" %>

<%@ page import="java.util.*" %>





<%-- <%
	
	String id = (String)session.getAttribute("mid"); //세션에 저장된 정보로
    
	DTOmember member = DAOmember.memberdetail2(mid); //한사람의 정보를 조회하러 감
	
	%>  --%>
	


<%
   request.setCharacterEncoding("utf-8");
   
   
   String qtitle = request.getParameter("qtitle");
   String qname=request.getParameter("qname");
   String qcont=request.getParameter("qcont");
   String qno = request.getParameter("qno");
   
   
   
   
	DAOQboard.Qboardupdate(qtitle, qname, qcont, qno);
   
   
   
   	
   	// 수정 성공 후 세션
   	
 	out.println("<script> alert('수정 성공. 문의페이지로 이동');</script>");
	out.println("<script> location.href='Qboardlist.jsp';</script>");
   

  

    
    
    
    /* 
   response.sendRedirect("welcome.jsp"); */
   
   
%>

<%-- 
<%=mid %> <br>
<%=mpass %> <br>
<%=memail %> <br>
<%=mage %> <br>
<%=mbd %> <br>
<%=mtel %> <br>
<%=mgender %> <br>
<%=mimage %> <br>
<%=mno %> <br>
 --%>

