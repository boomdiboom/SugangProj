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
<form method ="post" action="StuIdCheck.jsp" name = "idchekfrom">
아이디: <input type = "text" name = "cid">
<input type = "submit" value="중복확인">
</form>
<%
	if(request.getAttribute("result") != null){
		String result = (String) request.getAttribute("result");
		String cid = (String) request.getAttribute("cid");
		if(result.equals("true")){ %>
			<script type ="text/javascript">
			alert('이미 사용중인 아이디 입니다.');
			history.go(-1);
			</script>
<% 			}else { %>
		<script type="text/javascript">
			alert('사용가능한 아이디 입니다.');
			opener.document.form.stuid.value = "${cid}";
			window.self.close();
		</script>
<%		}
	}
%>
</body>
</html>