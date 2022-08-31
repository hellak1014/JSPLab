<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    
	String mid = request.getParameter("kid");
	String memail = request.getParameter("kemail");
	
	
	
	
	int result = DAOmember.kakaologin(mid, memail);
    
	  //로그인 시에는 3가지 경우의 수가 발생한다
	  	// 1. 로그인 성공(id, pass 일치) -> 로그인 승인. 메인으로 보내기. 
	  	// 2. 로그인 실패 (id 일치, pass 불일치) -> 다시 로그인 시도 처리.
	  	// 3. 로그인 실패 (id가 없음. 회원이 아니다.) -> 회원가입 페이지로 이동. 
	  	
	    
	      if (result==1){
	    	
	    	// 로그인 성공 후 세션
	    	session.setAttribute("mid", mid);
	    	
	    	out.println("<script> alert('로그인 성공.');</script>");
	    	out.println("<script> location.href='welcome.jsp';</script>");
	    	
	    }else if (result == 3){
	    	
	    	out.println("<script> alert('회원이 아닙니다. 회원가입을 먼저 해주세요.');</script>");
	    	
	    	out.println("<script> location.href='mkakaojoin.jsp';</script>");
	    	
	    	/*location.href="mkakaojoin?kid=" + kid + "&kemail=" + kemail ; */
	    	/* location.href="/경로?보낼변수명=" + 값 + "&보낼변수명2=" + 값 ..... ; */
	    	/* kid=' kid +'&kemail='+kemail'*/
	    	/* location.href='mkakaojoin.jsp?kid='+ kid +'&kemail='+kemail ; */
	    	
	    	
	    }
	  
    
    
%>


		