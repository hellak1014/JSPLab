<%@page import="util.FileUtil"%>
<%@ page import="DB.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.apache.commons.fileupload.*" %>    
<%@ page import="org.apache.commons.fileupload.disk.*" %>    
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>    

<%

	/* String mname = (String)session.getAttribute("mname"); */

	String btitle = null;
	String bcont = null;
	String bauthor = null;
	
	
  

   ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

   List items = sfu.parseRequest(request);

   Iterator iter = items.iterator();
   
   while(iter.hasNext()){
      FileItem item = (FileItem) iter.next();
      String name = item.getFieldName(); //키값 즉 이름을 추출
      
      if(item.isFormField()) {
         String value = item.getString("utf-8");
         if (name.equals("btitle")) btitle = value;
         else if (name.equals("bcont")) bcont = value;
         else if (name.equals("bauthor")) bauthor = value;

      } 

               
         }
     
  
      
      DAOboard.boardinsert(btitle, bauthor, bcont);
      response.sendRedirect("boardList.jsp");

%>