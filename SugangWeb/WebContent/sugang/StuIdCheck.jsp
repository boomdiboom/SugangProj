<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sugang.SuGangDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String cid =request.getParameter("cid");
	SuGangDAO dao = new SuGangDAO();
	request.setAttribute("cid",cid);
	if(dao.stuidCheck(cid)!=null)
		request.setAttribute("result", "true");
	else
		request.setAttribute("result","false");
%>
<jsp:forward page = "StuId.jsp"/>
</body>
</html>