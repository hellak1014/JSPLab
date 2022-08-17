<%@ page import = "DB.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<% 
	request.setCharacterEncoding("utf-8");    

    String mname = request.getParameter("mname");
    String mtel = request.getParameter("mtel");
    
    //DAOmember m = new DAOmember();
    //m.join(mname, mtel);
    //1번 방법. 클래스로 객체를 찍어서 객체로 메서드 호출
    
    // 2번 방법 . 이때는 DAO의 public~에서 static이 필요하다. static은 변수나 메소드에 키워드로 사용된다.
	// static 키워드를 사용한 변수는 클래스가 메모리에 올라갈 때 자동으로 생성이 된다. 즉,인스턴스(객체) 생성 없이 바로 사용가능 하다.
	// 인스턴스 생성 없이 바로 사용가능 하기 때문에 프로그램 내에서 공통으로 사용되는 데이터들을 관리 할 때 이용한다
    DAOmember.join(mname, mtel);
    
    
  %>