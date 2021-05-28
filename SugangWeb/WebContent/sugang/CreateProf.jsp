<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Professor" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id ="prof" class = "sugang.Professor" />
<jsp:setProperty property="*" name="prof" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ptell = request.getParameter("tel1") +"-"+ request.getParameter("tel2") +"-"+ request.getParameter("tel3");
	String profpw1 = request.getParameter("profpw1");
	String profpw2 = request.getParameter("profpw2");
	prof.setPtell(ptell);
	if(profpw1.equals(profpw2)) {
		prof.setProfpw(profpw1);
		SuGangDAO dao = new SuGangDAO();
		dao.insertProf(prof);
	}else {
		response.sendRedirect("PWFail.jsp"); 
	}
	
%>
</body>
</html>