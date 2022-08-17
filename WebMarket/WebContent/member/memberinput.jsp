<%@ page import = "DB.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%
	request.setCharacterEncoding("utf-8");	

	String mname = request.getParameter("mname");
	String mtel = request.getParameter("mtel");
	
	DAOmember m = new DAOmember();
	m.join(mname, mtel);
	
	


%>
