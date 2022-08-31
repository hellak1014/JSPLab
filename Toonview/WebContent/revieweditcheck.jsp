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
   
   
   String rtitle = request.getParameter("rtitle");
   String rname=request.getParameter("rname");
   String rspo=request.getParameter("rspo");
   String rcont=request.getParameter("rcont");
   String rno = request.getParameter("rno");
   
   
   
   
	DAOreview.reviewupdate(rtitle, rname, rspo, rcont, rno);
   
   
   
   	
   	// 수정 성공 후 세션
	
   	
 	out.println("<script> alert('수정 성공. 리뷰 게시판으로 이동');</script>");
	out.println("<script> location.href='reviewlist.jsp';</script>");
   

  

    
    
    
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

