<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="filecheck.jsp" method="post" enctype="multipart/form-data">
<!-- 오류가 났을때 method를 post가 아닌 get으로 실행. <form action="filecheck.jsp" method="get" enctype="multipart/form-data"> -->
<h3>게시물 등록</h3><br>
<input type="text" name="title">
<br>
<textarea name="content" rows=5 cols=20></textarea>
<br>
<input type = "file" name="image">
<br>
<input type="submit" value="등록">
</form>

</body>
</html>