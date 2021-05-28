<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Lecture" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id ="lect" class = "sugang.Lecture" />
<jsp:setProperty property="*" name="lect" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String day = request.getParameter("day1") + request.getParameter("day2");
	String profid = (String)session.getAttribute("user_id");
	lect.setSchedule(day);
	lect.setProfid(profid);
	lect.setStunum(0);
	SuGangDAO dao = new SuGangDAO();
	String check = dao.profScheCheck(profid, lect.getSchedule());
	if(check.equals("false")) {
		String fienum=dao.fienumCheck(lect.getFieid());
		String lectid = lect.getFieid() + fienum;
		lect.setLectid(lectid);
		dao.insertLect(lect);
		response.sendRedirect("ReadLecProf.jsp");
	}else {
		response.sendRedirect("ProfScheError.jsp");
	}
	
%>
</body>
</html>