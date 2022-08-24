<%@page import="DB.*"%>
<%@page import="util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.apache.commons.fileupload.*" %>    
<%@ page import="org.apache.commons.fileupload.disk.*" %>    
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>    

<%

	String pid = null;
	String pname = null;
	String pdesc = null;
	String pprice = null;	
	
	String pimage1 = null;
	byte[] pfile1 = null;
	String pimage2 = null;
	byte[] pfile2 = null;
	String pimage3 = null;
	byte[] pfile3 = null;

	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

	List items = sfu.parseRequest(request);

	Iterator iter = items.iterator();
	
	while(iter.hasNext()){
		FileItem item = (FileItem) iter.next();
		String name = item.getFieldName(); //키값 즉 이름을 추출
		
		if(item.isFormField()) {
			//제목,내용 등 사진을 제외한 나머지 항목들을 차례대로 추출
			String value = item.getString("utf-8");
			if (name.equals("pid")) pid = value;
			else if (name.equals("pname")) pname = value;
			else if (name.equals("pdesc")) pdesc = value;
			else if (name.equals("pprice")) pprice = value;

		} else {
			//사진에 관련된 즉 사진이름과 사진파일 추출
			if (name.equals("pimage1")) {
				pimage1 = item.getName();
				pfile1 = item.get();
					
					String root = application.getRealPath(java.io.File.separator);
					FileUtil.saveImage(root,pimage1,pfile1);
					
			} else if (name.equals("pimage2")) {
				pimage2 = item.getName();
				pfile2 = item.get();
					
					String root = application.getRealPath(java.io.File.separator);
					FileUtil.saveImage(root,pimage2,pfile2);
					
			} else if (name.equals("pimage3")) {
					pimage3 = item.getName();
					pfile3 = item.get();
						
						String root = application.getRealPath(java.io.File.separator);
						FileUtil.saveImage(root,pimage3,pfile3);
			}
		}
	}

	DAOproduct.productinsert(pid, pname, pdesc, pprice, pimage1, pimage2, pimage3);
	response.sendRedirect("productlist.jsp");
%>