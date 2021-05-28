<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2> 요일별 조회</H2>
<h3> 조회할 요일을 선택하세요.</h3>
<form action="ReadLecDay.jsp">
<SELECT SIZE="1" NAME="day">     
	<OPTION value="월" SELECTED> 월요일 </OPTION>     
	<OPTION value="화"> 화요일</OPTION>     
	<OPTION value="수"> 수요일</OPTION>   
	<OPTION value="목"> 목요일</OPTION>   
	<OPTION value="금"> 금요일</OPTION>       
</SELECT> <hr>
<button type ="submit">조회</button>

</form>
</body>
</html>