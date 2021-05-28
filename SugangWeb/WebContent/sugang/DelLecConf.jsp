<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Lecture" %> 
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String lectid = request.getParameter("SEQ_NO");
SuGangDAO dao = new SuGangDAO();
Lecture lec = dao.readLec(lectid);
%>
<table border = "1">
<tr><th>강의번호</th><th>강의제목</th><th>담당교수</th><th>분야번호</th><th>전공여부</th><th>시간표</th><th>신청인원</th></tr><tr>
<%	
out.print("<tr><td>"+lec.getLectid()+"</td>");
out.print("<td>"+lec.getLname()+"</td>");
out.print("<td>"+lec.getProfid()+"</td>");
out.print("<td>"+lec.getFieid()+"</td>");
out.print("<td>"+lec.getMajorkind()+"</td>");
out.print("<td>"+lec.getSchedule()+"</td>");
out.print("<td>"+lec.getStunum()+"</td></tr>");
%>
</table>
<br>
<h3>정말 삭제하시겠습니까?</h3>

--------------------------------------------------------
<a href='DelLec.jsp?lectid=<%=lec.getLectid() %>'>[삭제]</a>
<a href='ProfHome.jsp'>[돌아가기]</a>
</body>
</html>