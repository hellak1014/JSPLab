<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<%@ page import="DB.*" %>
<%@ page import="util.*" %>


<%@ page import="org.apache.commons.fileupload.*" %>    
<%@ page import="org.apache.commons.fileupload.disk.*" %>    
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>    


<%

	String qtitle = null;
	String qname = null;
	String qcont = null;
	
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

	   List items = sfu.parseRequest(request);

	   Iterator iter = items.iterator();
	   
	   while(iter.hasNext()){
	      FileItem item = (FileItem) iter.next();
	      String name = item.getFieldName(); //키값 즉 이름을 추출
	      
	      if(item.isFormField()) {
	         //제목,내용 등 사진을 제외한 나머지 항목들을 차례대로 추출
	         String value = item.getString("utf-8");
	         if (name.equals("qtitle")) qtitle = value;
	         else if (name.equals("qname")) qname = value;
	         else if (name.equals("qcont")) qcont = value;
		  } 
	      }
	   
	      
	      DAOQboard.Qboardinsert(qtitle, qname, qcont);
	      response.sendRedirect("Qboardlist.jsp");

	
%>

	

</body>
</html>