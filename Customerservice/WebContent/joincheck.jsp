<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="db.*" %>   

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pass = request.getParameter("pass");

	
	int result = DAOcustomer.join(id, name, pass);
	
	//회원 가입 시 2가지 경우의 수가 발생한다. 
	// 1. 회원 가입 성공
	// 2. 회원 가입 실패 - 이미 가입된 회원입니다. 

	if (result==1){
		response.sendRedirect("login.jsp");
	} else{
		response.sendRedirect("join.jsp");
	}
	
	
	
	
	%>