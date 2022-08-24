<%@ page import="util.FileUtil2" %>
<%@ page import = "DB.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="org.apache.commons.fileupload.*" %>    
<%@ page import="org.apache.commons.fileupload.disk.*" %>    
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>  

<%
String mname = null;
String mtel = null;
String mimage = null;
byte[] mfile = null;

ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

List items = sfu.parseRequest(request);

Iterator iter = items.iterator();

while(iter.hasNext()){ //데이터가 있는 동안 돌아라
   FileItem item = (FileItem) iter.next();
   String name = item.getFieldName(); //키값 즉 이름을 추출
   
   if(item.isFormField()) {
      //제목,내용 등 사진을 제외한 나머지 항목들을 차례대로 추출
      String value = item.getString("utf-8");
      if (name.equals("mname")) mname = value;
      else if (name.equals("mtel")) mtel = value;

   } else {
      //사진에 관련된 즉 사진이름과 사진파일 추출
      if (name.equals("mimage")) {
            mimage = item.getName(); //이름
            mfile = item.get(); //사진
            
            String root = application.getRealPath(java.io.File.separator);
            FileUtil2.saveImage(root,mimage,mfile);

            
      }
   }
}
   
   DAOmember.memberinsert(mname, mtel, mimage); //DAO 보드로 보내기
   response.sendRedirect("memberlist.jsp");
			//특정 처리 후, 또는 특정 조건일 때에 지정한 페이지로 이동

%>



