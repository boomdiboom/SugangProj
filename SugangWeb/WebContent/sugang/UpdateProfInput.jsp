<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sugang.SuGangDAO" %>
<%@ page import = "sugang.Professor" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String profid = request.getParameter("profid");
	SuGangDAO dao = new SuGangDAO();
	request.setAttribute("profid", profid);
	Professor prof = new Professor();
	prof = dao.readProf(profid);
%>

<form action= "UpdateProf.jsp">
<input type="hidden" name = "Profpw" value= <%=prof.getProfpw()%>>
<table>
<tr><td colspan="2" height="50" align = "center"><font size = "5">교수정보 수정</font></td></tr>
<tr><td>교수아이디</td><td><input type="text" name = "profid" value = <%=prof.getProfid() %> readonly></td></tr>
<tr><td>이름</td><td><input type="text" name = "pname" value = <%=prof.getPname()%> ></td></tr>
<tr><td>전화번호</td><td><input type="text" name = "ptell" value = <%=prof.getPtell()%> ></td></tr>
<tr><td>전공번호</td><td><input type="text" name = "majid" value = <%=prof.getMajid()%> ></td></tr>
<tr><td>단과대학</td><td><input type="text" name = "college" value = <%=prof.getCollege()%> ></td></tr>
<tr><td colspan="2" height="10"> </td> </tr>
<tr> <td colspan="2" align = "right">
	<table width="100%" border ="0" cellpadding = "0" cellspacing="0">
	<tr>
	<td width="28%">&nbsp;</td>
	<td width="51%">&nbsp;</td>
	<td width="12%"><A href= 'UpdateProfForm.jsp'><input type = "button" value ="목록으로"></A></td>
	<td>&nbsp; &nbsp; </td>
	<td width="9%"><input type= "submit" value="수정"></td>
	</tr>
	</table>
</td></tr>
</table>
</form>

</body>
</html>