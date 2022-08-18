<%-- <%@ page import = "DB.*" %>
<%@page import="util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8");	

		String title = null;
		String content = null;
		String iname = null; //이렇게 3가지만 DB에 들어간다. 이건 사진의 이름.
		byte[] ifile = null;
		
		ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory()); //객체 생성

		List items = sfu.parseRequest(request); //객체에 있는 request 매서드를 추출하여 list로 만든다. 
		
		Iterator iter = items.iterator();  //iterator : 항목을 뽑아내어 아이템에 순서를 부여하는 매서드. 
		
		while(iter.hasNext()){
			FileItem item = (FileItem) iter.next(); //없을때까지 아이템을 하나씩 뽑아 아이템으로 넣기. 
			String name = item.getFieldName(); //key값. 즉 , 이름을 추출. 
			
			if(item.isFormField()) {
				//제목, 내용 등 사진을 제외한 나머지 항목들을 차례대로 추출
				String value = item.getString("utf-8");
				if (name.equals("title")) title = value;
				else if (name.equals("content")) content = value;
				
			} else {
				//사진에 관련된. 즉, 사진 이름와 사진 파일을 추출한다.
				if (name.equals("image")){
					iname = item.getName();
					ifile = item.get();
					
					String root = application.getRealPath(java.io.File.separator);
					FileUtil.saveImage(root,iname,ifile);
					
				}
			}
		}

		DAOboard.boardinsert(title, content, iname);
		
		
	%>

</body>
</html> --%>





<%@page import="util.FileUtil"%>
<%@ page import="DB.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.apache.commons.fileupload.*" %>    
<%@ page import="org.apache.commons.fileupload.disk.*" %>    
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>    

<%


   String title = null;
   String content = null;
   String iname = null;
   byte[] ifile = null;

   ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

   List items = sfu.parseRequest(request);

   Iterator iter = items.iterator();
   
   while(iter.hasNext()){
      FileItem item = (FileItem) iter.next();
      String name = item.getFieldName(); //키값 즉 이름을 추출
      
      if(item.isFormField()) {
         //제목,내용 등 사진을 제외한 나머지 항목들을 차례대로 추출
         String value = item.getString("utf-8");
         if (name.equals("title")) title = value;
         else if (name.equals("content")) content = value;

      } else {
         //사진에 관련된 즉 사진이름과 사진파일 추출
         if (name.equals("image")) {
               iname = item.getName();
               ifile = item.get();
               
               String root = application.getRealPath(java.io.File.separator);
               FileUtil.saveImage(root,iname,ifile);

               
         }
      }
   }
      
      DAOboard.boardinsert(title, content, iname);
      response.sendRedirect("boardList.jsp");

%>