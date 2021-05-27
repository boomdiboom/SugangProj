<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Lecture" %>
<% request.setCharacterEncoding("utf-8"); %>>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String stuid = (String)session.getAttribute("user_id");
	String lectid = request.getParameter("lectid");
	SuGangDAO dao = new SuGangDAO();
	String check = dao.regiCheck(stuid, lectid);
	Lecture lec = dao.readLec(lectid);
	if(lec!=null) {
		if(check.equals("true")) {
			dao.regiCanLect(stuid, lectid);
			dao.regiNumMinus(lectid);
			
			response.sendRedirect("ReadLecStu.jsp");
		}else {
			session.setAttribute("message", "등록하지 않은 강의입니다.");
			response.sendRedirect("LectidFail2.jsp");
		}
	}else {
		session.setAttribute("message", "존재하지 않는 강의입니다.");
		response.sendRedirect("LectidFail2.jsp");
	}
	
	
%>
</body>
</html>