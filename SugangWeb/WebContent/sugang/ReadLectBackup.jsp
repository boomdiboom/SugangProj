<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Lect_Back" %>
<%@ page import = "java.util.*" %>
<% 
	SuGangDAO dao = new SuGangDAO();	
	List<Lect_Back> list = dao.readLectBackup();
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
<title>강의 수정 내역 조회</title>
</head>
<body>
<table border = "1">
	<tr><th>강의번호</th><th>강의제목</th><th>담당교수</th><th>분야번호</th><th>전공여부</th><th>시간표</th><th>신청인원</th><th>수정날짜</th><th>수정유형</th></tr><tr>
<%	
for(int i=0;i<list.size();i++) {
	Lect_Back lec= (Lect_Back)list.get(i);
	out.print("<tr><td>"+lec.getLectid()+"</td>");
	out.print("<td>"+lec.getLname()+"</td>");
	out.print("<td>"+lec.getProfid()+"</td>");
	out.print("<td>"+lec.getFieid()+"</td>");
	out.print("<td>"+lec.getMajorkind()+"</td>");
	out.print("<td>"+lec.getSchedule()+"</td>");
	out.print("<td>"+lec.getStunum()+"</td>");
	out.print("<td>"+lec.getChangedate()+"</td>");
	out.print("<td>"+lec.getType()+"</td></tr>");
}
%>
</table>
</body>
</html>