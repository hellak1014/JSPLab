<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	String mid = (String)session.getAttribute("mid");
	String mpass = request.getParameter("mpass");
	
	int result = DAOmember.memberlogin(mid, mpass);
	
	 if (result==1){
	    	
	    	
	    	
	    	out.println("<script> alert('비밀번호 일치.');</script>");
	    	
	    	int result2 = DAOmember.memberout(mid, mpass);
	    	
	    	if (result2 == 1) {
	    		session.removeAttribute("mid");
	    		out.println("<script> alert('회원 탈퇴 성공.');</script>");
	    		out.println("<script> location.href='welcome.jsp';</script>");
	    	} else{
	    		out.println("<script> alert('회원 탈퇴 실패. 다시 시도하세요.');</script>");
		    	out.println("<script> location.href='membereditpage.jsp';</script>");
	    	}
	    	
	    	
	    	
	    }else if (result==2){
	    	out.println("<script> alert('비밀번호 불일치. 다시 시도하세요.');</script>");
	    	out.println("<script> location.href='welcome.jsp';</script>");
	    }
	
	%>