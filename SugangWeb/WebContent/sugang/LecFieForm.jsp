<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2> 분야별 조회</H2>
<h3> 조회할 분야를 선택하세요.</h3>
<form action="ReadLecFie.jsp">
<SELECT SIZE="1" NAME="fieid">     
	       <OPTION value = "A01" SELECTED>실물경제</OPTION>     
		   <OPTION value = "A02">경제법</OPTION>     
		   <OPTION value = "B01">금융</OPTION>
		   <OPTION value = "B02">회계</OPTION>
		   <OPTION value = "B03">마케팅</OPTION>
		   <OPTION value = "C01">국어학</OPTION>
		   <OPTION value = "C02">고전문학</OPTION>
		   <OPTION value = "C03">현대문학</OPTION>
		   <OPTION value = "D01">반도체</OPTION>
		   <OPTION value = "D02">회로개발</OPTION>
		   <OPTION value = "D03">디스플레이</OPTION>     
		 </SELECT> <hr>
<button type ="submit">조회</button>

</form>
</body>
</html>