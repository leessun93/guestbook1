<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.Guestbookvo" %>   
<%@ page import="com.javaex.dao.GuestbookDao" %>	
<%
	//올리고
	GuestbookDao guestbookDao = new GuestbookDao();


	//파라미터값 가져오기
	String name = request.getParameter("uname");
	String password = request.getParameter("upswd");
	String text = request.getParameter("textarea");
	//즈장	
	Guestbookvo guestbookvo = new Guestbookvo(name, password, text);
	
	guestbookDao.Insert(guestbookvo);
	
	response.sendRedirect("./addList.jsp");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>