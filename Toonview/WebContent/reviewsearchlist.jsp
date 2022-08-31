<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<tbody>

	<%-- <%
			DAOreview DAOreview = new DAOreview();
			ArrayList<DTOreview> lists = DAOreview.reviewsearch(request.getParameter("searchField"),
					request.getParameter("searchText"));
			if (lists.size() == 0) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('검색결과가 없습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			for (int i = 0; i < lists.size(); i++) {
		%>
		<tr>
			<td><%=lists.get(i).getRno()%></td>
			현재 게시글에 대한 정보
			<td><a href="reviewdeail.jsp?bbsID=<%=lists.get(i).getBbsID()%>"><%=lists.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;")
			.replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></a></td>
			<td><%=lists.get(i).getUserID()%></td>
			<td><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
			+ list.get(i).getBbsDate().substring(14, 16) + "분"%></td>
			<td><%=list.get(i).getBbsCount()%></td>
			<td><%=list.get(i).getLikeCount()%></td>
		</tr>
		<%
			}
		%>
		 --%>
	</tbody>


</body>
</html>