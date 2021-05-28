<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Professor" %>
<%@ page import = "java.util.*" %>
<% 
	SuGangDAO dao = new SuGangDAO();	
	List<Professor> list = dao.readProfAll();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	body,html{width: 100%; height: 100%;}
	table{
	position:absolute; left:50%; top:50%;
	transform:translate(-50%,-50%);
	cellpadding: 10px;
	width: 600px;
		}
	th{background-color: rgba(33,33,33,.2);}
	td:nth-child(2n){background-color: rgba(99,99,99,.2);}
	td:nth-child(2n+1){background-color: rgba(00,57,66,.2);}
</style>
<title>학생정보 수정</title>
</head>
<body>
<table border = "1">
	<tr><th colspan = "5">학생 정보 수정</th></tr>
	<tr><th>교수아이디</th><th>교수이름</th><th>전화번호</th><th>전공번호</th><th>단과대학</th><tr>
<%	
Professor prof = new Professor();
for(int i=0;i<list.size();i++) {
	prof= (Professor)list.get(i);
	out.print("<tr><td>"+prof.getProfid()+"</td>");
	out.print("<td><a href='UpdateProfInput.jsp?profid="+prof.getProfid()+"'>" 
			+ prof.getPname()+"</a></td>");
	out.print("<td>"+prof.getPtell()+"</td>");
	out.print("<td>"+prof.getMajid()+"</td>");
	out.print("<td>"+prof.getCollege()+"</td></tr>");
}
request.setAttribute("prof",prof);
%>
</table>
</body>
</html>