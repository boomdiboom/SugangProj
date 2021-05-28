<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Professor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
    function id_search(){
    	theURL = "id.jsp";
    	window.open(theURL,'LoginFail','width=500,height=200');
    }
    
    
 </script>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("pw");
	String type = request.getParameter("type");
	SuGangDAO dao = new SuGangDAO();
	if(type.equals("prof")) {
		if(password.equals(dao.profidCheck(id))){
			session.setAttribute("user_type", "prof");
			session.setAttribute("user_id",id);
			request.setAttribute("target","ProfMenu");
		}else {
			out.println("alert('아이디나 비밀번호가 틀렸습니다.')");
			request.setAttribute("target","LoginFail");
		}
	}else if(type.equals("stu")) {
		if(password.equals(dao.stuidCheck(id))){
			session.setAttribute("user_type", "stu");
			session.setAttribute("user_id",id);
			request.setAttribute("target","StuMenu");
		}else {
			out.println("alert('아이디나 비밀번호가 틀렸습니다.')");
			request.setAttribute("target","LoginFail");
		}
	}else {
		if(id.equals("sys")&&password.equals("123")) {
			session.setAttribute("user_type", "admin");
			session.setAttribute("user_id",id);
			request.setAttribute("target","AdminMenu");
		}else {
			out.println("alert('아이디나 비밀번호가 틀렸습니다.')");
			request.setAttribute("target","LoginFail");
		}
	}
		
%>
<jsp:forward page="template.jsp"/>
</body>
</html>