<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>교수 메뉴</title>
<style>
.col{display:flex; flex-direction:column; height: 100%;}
a {text-decoration: none; display:block; }

.item1{ flex-basis:80px; flex-shrink:0; text-align: center; position: relative; background-image:url("./image/Cool Sky.jpg");}
#center {position: absolute; left:50%; top:50%; transform:translate(-50%, -50%); border: none;}

.row1{display:flex; flex-direction:row; flex-basis:50px; flex-shrink: 0; background-image:url("./image/Moonlit Asteroid.jpg"); }

.item2{flex-grow:0; text-align: center; flex-basis:130px; padding: 0px; margin: 0px; 
	position: relative; background: black; color: white; }
.item2:hover {background: darkgray; color: black;}
.item2:hover .submenu{display: block;}	
.submenu {display:none; position: absolute; background-color: gray; 
	width: 100%;  top:100%; left:0px; }
.submenu a {display: block; text-decoration: none; text-align: center; height: 50px;}
.submenu a:link {color: blue;}
.submenu a:visited {color: blue;}
.submenu a:hover {background: lavender; color: black;}
#blank {flex-grow: 5;}

#login { flex-grow:0; text-align: center; flex-basis:130px; padding: 0px; margin: 0px; 
	position: relative; background: #2C5364; color: white; margin-left: auto; border-color: #2C5364;}
#login:hover {background: darkgray; color: black;}
#login a {position: absolute; left:50%; top:50%; transform:translate(-50%, -50%); border: none;}
#login a:link {color: white;}
#login a:visited {color: white;}
.row2{display:flex; flex-direction:row; flex-grow: 5;}
.item3{flex-grow: 5;}
.item4{ flex-basis:100px; flex-shrink:0; margin-left: auto;}
.item5{ flex-basis:150px; flex-shrink:0; background: gray; color: white;}

#f1 {flex: 10; height: 100%;}
li {list-style-position: inside; padding: 0;}

html,body {width: 100%; height: 100%;}
div{border:1px solid black;}
body {padding:0;margin:0;}
</style>

<script>
function logout() {
	location.replace(Login.html)
}
</script>

</head>
<body>
<div class="col">
<div class="item1"><div id="title"><h1>교수 메뉴</h1></div></div>
<div class="row1">
	<div class="item2"> <div id=center> 강의조회 </div>
		<div class="submenu">
			<a href="ReadLecAll.jsp" target = "f1">전체강의 조회</a>
			<a href="ReadLecProf.jsp" target = "f1">담당강의 조회</a>
			<a href="LecDayForm.jsp" target = "f1">요일별강의 조회</a>
		</div>		
	</div>
	<div class="item2"> <div id=center> 강의등록/취소 </div>
		<div class="submenu">
			<a href="AddLecForm.jsp" target = "f1">강의등록 </a>
			<a href="DelLecForm.jsp" target = "f1">강의취소 </a>
		</div>
	</div>
	<div></div>
	<div class="item2"> <div id=center > 학생조회 </div>
		<div class="submenu">
			<a href="ReadStuAll.jsp" target = "f1">전체학생조회 </a>
			<a href="ReadStuProfid.jsp" target = "f1">담당학생조회 </a>
		</div>
	</div>
	<div id ="blank"></div>
	<div id="login">
	<a href='GoLoginForm.jsp'>로그아웃 </a>
	</div>
</div>
<div class="row2">
	<iframe src = "ProfHome.jsp" name = "f1" id = "f1"></iframe> 
	<div class="item4">AD</div>
</div>

<div class="item5" align="center"><a href = "">검색</a></div>
</div>


</body>
</html>