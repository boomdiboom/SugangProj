<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
 <head>
  <meta charset="utf-8" />
  <title> 강의등록 </title>
  <style>
   	 body,html{width:100%, height:100%}  
	 table{
		position:absolute; left:50%; top:50%;
		transform:translate(-50%, -50%);
		cellpadding:10px;
		height:400px;
	}
  </style>

 <!--  <script>
 
 function check() {
 	var regExp = /^[a-z][0-9a-z]*$/g;
 	var string = form.id.value;
 	
 	if(!regExp.test(string)){
 		alert('올바른 아이디를 입력하세요.\n영문소문자+숫자조합');
 		form.id.focus();
 		return false;		
 	}
 	if(!form.password.value){
 		alert('비밀번호를 입력하세요.');
 		form.password.focus();
 		return false;		
 	}
 	if(!form.name.value){
 		alert('이름을 입력하세요.');
 		form.name.focus();
 		return false;		
 	}
 	if(!form.tel2.value || !form.tel3.value){
 		alert('전화번호를 입력하세요.');
 		form.tel2.focus();
 		return false;		
 	}
 	var h = form.hobby;
 	if(!(h[0].checked || h[1].checked || h[2].checked || h[3].checked)){
 		alert('취미를 하나 이상 선택하세요.');
 		return false;	
 	}
 	if(!form.intro.value){
 		alert('전화번호를 입력하세요.');
 		form.intro.focus();
 		return false;		
 	}
 	return true;
 } 
 
 </script>
 -->
 </head>

 <BODY> 
   <FORM ACTION="AddLec.jsp" METHOD=post name="form">   
	<TABLE>     
	  <tr><td COLSPAN="2" ALIGN="center"><h2>강의 정보 입력</h2></td></tr>   
	  	<TR>   
	   <TD> 분야 </TD>   
	   <TD> 
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
		 </SELECT> </TD> 
	  </TR>
	   <TD> 이름 </TD> 
	   <TD> <INPUT TYPE="text" NAME="lname" SIZE="10"></TD> 
	  </TR>
	  <TR>   
	   <TD> 시간표 </TD>   
	    <TD> <SELECT SIZE="1" NAME="day1">     
			<OPTION value="월" SELECTED> 월요일 </OPTION>     
			<OPTION value="화"> 화요일</OPTION>     
			<OPTION value="수"> 수요일</OPTION>   
			<OPTION value="목"> 목요일</OPTION>   
			<OPTION value="금"> 금요일</OPTION>       
		</SELECT>
		</TD>
		<td>
		<SELECT SIZE="1" NAME="day2">     
			<OPTION value="1" SELECTED> 1교시 </OPTION>     
			<OPTION value="2"> 2교시</OPTION>     
			<OPTION value="3"> 3교시</OPTION>   
			<OPTION value="4"> 4교시</OPTION>   
			<OPTION value="5"> 5교시</OPTION>
			<OPTION value="6"> 6교시</OPTION> 
			<OPTION value="7"> 7교시</OPTION> 
			<OPTION value="8"> 8교시</OPTION>        
		</SELECT>
		</td>
	  </TR>
	  <TR>   
	   <TD> 전공여부 </TD>   
	   <TD> <INPUT TYPE="radio" NAME="majorkind" VALUE="전공" CHECKED>전공&nbsp;&nbsp;       
	        <INPUT TYPE="radio" NAME="majorkind" VALUE="교양">교양 </TD> 
	  </TR>
	  <TR>   
	   <TD COLSPAN="2" ALIGN="center"> <INPUT TYPE="submit" VALUE="등록하기">
	      <INPUT TYPE="reset" VALUE="취소하기"> 
       </TD>  
	  </TR> 
	</TABLE> 
  </FORM>
 </BODY> 
</html>
