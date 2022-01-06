<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.Guestbookvo" %>   
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%
GuestbookDao guestbookDao = new GuestbookDao();
List<Guestbookvo> guestbookList = guestbookDao.getList();
String str = request.getParameter("id");
String pswd = request.getParameter("password");
int i = Integer.parseInt(str);




if(pswd == guestbookList.get(i).getPassword()){
guestbookDao.Delete(i);
}else{
	response.sendRedirect("./addList.jsp");
}
	
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