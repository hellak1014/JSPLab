<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String mname = request.getParameter("mname");
	String mpass = request.getParameter("mpass");
	    
	    int result = DAOmember.login(mname, mpass);
	    
	  //로그인 시에는 3가지 경우의 수가 발생한다
	  	// 1. 로그인 성공(id, pass 일치) -> 로그인 승인. 메인으로 보내기. 
	  	// 2. 로그인 실패 (id 일치, pass 불일치) -> 다시 로그인 시도 처리.
	  	// 3. 로그인 실패 (id가 없음. 회원이 아니다.) -> 회원가입 페이지로 이동. 
	  	
	    
	    if (result==1){
	    	
	    	// 로그인 성공 후 세션
	    	session.setAttribute("mname", mname);
	    	
	    	out.println("<script> alert('로그인 성공. 제품목록으로 이동');</script>");
	    	out.println("<script> location.href='productlist.jsp';</script>");
	    	
	    }else if (result==2){
	    	out.println("<script> alert('비밀번호 오류. 비밀번호를 다시 입력해주세요.');</script>");
	    	out.println("<script> location.href='login.jsp';</script>");
	    }else {
	    	out.println("<script> alert('회원이 아닙니다. 회원가입을 먼저 해주세요.');</script>");
	    	out.println("<script> location.href='join.jsp';</script>");
	    }
	    
	    
	    
	    %>



