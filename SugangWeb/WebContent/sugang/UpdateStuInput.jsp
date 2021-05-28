<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Student" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String stuid = request.getParameter("stuid");
	SuGangDAO dao = new SuGangDAO();
	request.setAttribute("stuid", stuid);
	Student stu = new Student();
	stu = dao.readStu(stuid);
%>

<form action= "UpdateStu.jsp">
<input type="hidden" name = "stupw" value= <%=stu.getStupw()%>>
<table>
<tr><td colspan="2" height="50" align = "center"><font size = "5">학생정보 수정</font></td></tr>
<tr><td>학생아이디</td><td><input type="text" name = "stuid" value = <%=stu.getStuid() %> readonly></td></tr>
<tr><td>이름</td><td><input type="text" name = "stuname" value = <%=stu.getStuname()%> ></td></tr>
<tr><td>담당교수번호</td><td><input type="text" name = "profid" value = <%=stu.getProfid()%> ></td></tr>
<tr><td>전화번호</td><td><input type="text" name = "stutell" value = <%=stu.getStutell()%> ></td></tr>
<tr><td>학년</td><td><input type="text" name = "grade" value = <%=stu.getGrade()%> ></td></tr>
<tr><td colspan="2" height="10"> </td> </tr>
<tr> <td colspan="2" align = "right">
	<table width="100%" border ="0" cellpadding = "0" cellspacing="0">
	<tr>
	<td width="28%">&nbsp;</td>
	<td width="51%">&nbsp;</td>
	<td width="12%"><A href= 'UpdateStuForm.jsp'><input type = "button" value ="목록으로"></A></td>
	<td>&nbsp; &nbsp; </td>
	<td width="9%"><input type= "submit" value="수정"></td>
	</tr>
	</table>
</td></tr>
</table>
</form>

</body>
</html>