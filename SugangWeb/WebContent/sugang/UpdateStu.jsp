<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Student" %>
<jsp:useBean id ="stu" class = "sugang.Student" />
<jsp:setProperty property="*" name ="stu"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String stuid = request.getParameter("stuid");
	SuGangDAO dao = new SuGangDAO();
	dao.updateStu(stu);
	response.sendRedirect("UpdateStuForm.jsp");
%>

</body>
</html>