<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	

//구매 정보 넘겨 받기

	String dpid = request.getParameter("pid");
	String dpname = request.getParameter("pname");
	String dpprice = request.getParameter("pprice");



//고객 정보 조회

	String mname = (String)session.getAttribute("mname");
	DTOmember member = DAOmember.memberDetail2(mname);
	
	String dmid = member.getMno();
	String dmtel = member.getMtel();
	String dmaddr = member.getMaddr();
			
	
/*  	DTOproduct product = DAOproduct.productDetail(pid);*/

//디비 넣기


	int result = DAOdelivery.insert(dpid, dmid, dpname, dmtel, dmaddr, dpprice);


%>