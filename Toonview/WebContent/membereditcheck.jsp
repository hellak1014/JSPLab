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
   
   
   String mid = request.getParameter("mid");
   String mpass=request.getParameter("mpass");
   String memail=request.getParameter("memail");
   String mage=request.getParameter("mage");
   String mbd=request.getParameter("mbd");
   String mtel=request.getParameter("mtel");
   String mgender=request.getParameter("mgender");
   String mimage=request.getParameter("mimage");
   String mno = request.getParameter("mno");
   
   
   
   
	DAOmember.memberupdate(mid, mpass, memail, mage, mbd, mtel, mgender, mimage, mno);
   
   
   
   	
   	// 수정 성공 후 세션
	session.setAttribute("mid", mid);
   	
 	out.println("<script> alert('수정 성공. 메인으로 이동');</script>");
	out.println("<script> location.href='welcome.jsp';</script>");
   

  

    
    
    
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

