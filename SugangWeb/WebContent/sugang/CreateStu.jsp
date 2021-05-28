<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Student" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id ="stu" class = "sugang.Student" />
<jsp:setProperty property="*" name="stu" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String stutell = request.getParameter("tel1") +"-"+ request.getParameter("tel2") +"-"+ request.getParameter("tel3");
	String stupw1 = request.getParameter("stupw1");
	String stupw2 = request.getParameter("stupw2");
	stu.setStutell(stutell);
	stu.setGrade(1);
	if(stupw1.equals(stupw2)) {
		stu.setStupw(stupw1);
		SuGangDAO dao = new SuGangDAO();
		dao.insertStu(stu);
	}else {
		response.sendRedirect("PWFail2.jsp"); 
	}
	
%>
</body>
</html>