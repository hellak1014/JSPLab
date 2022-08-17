<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
    
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
    
    int result = DAOcustomer.login(id, pass);
    
  //로그인 시에는 3가지 경우의 수가 발생한다
  	// 1. 로그인 성공(id, pass 일치) -> 로그인 승인. 메인으로 보내기. 
  	// 2. 로그인 실패 (id 일치, pass 불일치) -> 다시 로그인 시도 처리.
  	// 3. 로그인 실패 (id가 없음. 회원이 아니다.) -> 회원가입 페이지로 이동. 
  	
    
    if (result==1){
    	response.sendRedirect("main.jsp");
    }else if (result==2){
    	response.sendRedirect("login.jsp");
    }else {
    	response.sendRedirect("join.jsp");
    }
    
    
    
    %>