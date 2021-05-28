<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자바 대학교 로그인 시스템</title>
<style>
#container {display: flex; flex-direction:column; height: 100%; align = center; }
#blank {position: relative; height: 25%;}
#header {position: relative; height: 70px; line-height: 100px;  background: #83DCB7;}
#title {position: absolute; left:50%; top:50%; transform:translate(-50%, -50%); border: none; text-align: center;}
#logo {margin: 0px 20px; height: 70px; width: 70px;}
#tbl {width: 100%; hight: 100%; border:1px solid black;}
#tbl2 {width: 100%; hight: 40%; }
.row2{display:flex; flex-direction:row; flex-grow: 5;}
.item3{flex-grow: 5;}
.item4{ flex-basis:100px; flex-shrink:0; margin-right: 0;}
#footer{}
a{text-align: center;}
iframe {overflow: hidden; width: 260px; height: 260px; display: inline-block; border: none;}
td{align: center;}



</style>

<script>
function check() {
	if(frm.id.value==""){
		alert("아이디를 입력하세요");
		frm.id.focus();
		return false;
	}
	else if(frm.pw.value==""){
		alert("비밀번호를 입력하세요");
		frm.pw.focus();
		return false;
	}
	else if(!frm.type[0].checked&&!frm.type[1].checked&&!frm.type[2].checked) {
		alert("유형을 체크하세요");
		return false;
	}
}
</script>

</head>
<body>
<div id="container">
<tr><td>
<div id= "blank"></div>
</td></tr>
<table id = "tbl"><div id="header">
<image src="./image/자바대학1.png" width=80 height=80 id = "logo"/>
<a id="title">
<h2>자바 대학교 통합 관리 시스템</h2></a>
</div>
<div class="row2">
<form name = "frm" onsubmit="return check()" action="Login.jsp" class = "item3" METHOD=post>
<br><hr>
<tr><th>ID</th><td colspan = "10" > <input type ="text" name = "id" id = "id"/> </td><th></th></tr>
<tr><th>PASSWORD</th><td colspan = "10" > <input type ="password" name = "pw" id= "pw"/> </td><th></th></tr>
<tr><th>유형</th><td colspan = "10"  >  
<input type="radio" name = "type" value="prof" id ="prof"/> <label for="prof"> 교수</label> 
<input type="radio" name = "type" value="stu" id ="stu"/> <label for="stu"> 학생</label>
<input type="radio" name = "type" value="admin" id ="admin"/> <label for="admin"> 관리자</label>
</td><th></th></tr>
<tr><td></td><td colspan = "10" > <button type ="submit">로그인</button> <button type ="reset">재입력</button></td></tr>
</form>
</div>
</table>

</div>
</div>
<table id = "tbl2"> <tr><td>
<iframe src="Slide.html" name = "if" id = "if"></iframe> </td> 
<td> <h3> 공지사항 </h3> <br> 
자바대학 구성원 여러분께 알려드립니다 .<br> 수강신청당일에는 서버과부하로 인해 원활한 사이트 이용이 힘드시니 참고부탁드립니다.<br> <br> 
 </td></tr>
<tr><th colspan = "2"> 우)40000 대구광역시 시구 자바대학로 1  학교안내전화 053-101-3456, 당직실 053-123-4567 <br> ©JAVAUNIVERCITY. All rights reserved.</th></tr>
</table>
</body>
</html>