<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "java.util.*" %>

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
<title>시간표 조회</title>
</head>
<body>
<table border = "1">
<tr><th colspan = "6">시간표조회</th></tr>
<tr><th></th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><tr>
<%	
String stuid = (String)session.getAttribute("user_id");
SuGangDAO dao = new SuGangDAO();	
for(int i=1;i<9;i++) {
	out.print("<tr><td>"+i+"교시</td>");
	out.print("<td>"+dao.readSche(stuid, "월"+i)+"</td>");
	out.print("<td>"+dao.readSche(stuid, "화"+i)+"</td>");
	out.print("<td>"+dao.readSche(stuid, "수"+i)+"</td>");
	out.print("<td>"+dao.readSche(stuid, "목"+i)+"</td>");
	out.print("<td>"+dao.readSche(stuid, "금"+i)+"</td></tr>");
}
%>
</table>
</body>
</html>