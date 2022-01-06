<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.Guestbookvo" %>   
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%
	GuestbookDao guestbookDao = new GuestbookDao();
	List<Guestbookvo> guestbookList = guestbookDao.getList();
	String str = request.getParameter("id");
	int i = Integer.parseInt(str);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>	
		<form action="./delete.jsp?id=<%=i%>&password=" method="get">
		비밀번호 : <input type="password" name="password" value=""><br>
		<a href="./addList.jsp">메인으로 돌아가기</a>
		</form>
</html>