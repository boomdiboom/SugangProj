<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title> 교수등록 </title>
  <style>
   	 body,html{width:100%, height:100%}  
	 table{
		position:absolute; left:50%; top:50%;
		transform:translate(-50%, -50%);
		cellpadding:10px;
		height:400px;
	}
  </style>
  
<script>
function id_search(){
	theURL = "ProfId.jsp";
	window.open(theURL,'id_check','width=500,height=200');
}

function check() {
	if(!form.profpw1.value.equals(form.profpw2.value)){
 		alert('비밀번호가 일치하지 않습니다.');
 		form.profpw1.focus();
 		return false;		
 	}
}
</script>

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
   <FORM ACTION="CreateProf.jsp" METHOD=post name="form">   
	<TABLE>     
	  <tr><td COLSPAN="2" ALIGN="center"><h2>교수 정보 입력</h2></td></tr>   
	  <TR>   
	   <TD> 아이디 </TD>   
	   <TD> <INPUT TYPE="text" NAME="profid" SIZE="10" readonly> 
	   		<INPUT TYPE="button" value="아이디 생성"  onclick="id_search()"></TD> </TR>
	  <TR>   
	   <TD> 이름 </TD>
	   <TD> <INPUT TYPE="text" NAME="pname" SIZE="10"></TD> 
	   </TR> <TR>   <TD> 암호 </TD>   
	   <TD> <INPUT TYPE="password" NAME="profpw1" SIZE="10"></TD> 
	  </TR> 
	  <TR>   <TD> 암호 재입력 </TD>   
	   <TD> <INPUT TYPE="password" NAME="profpw2" SIZE="10"></TD> 
	  </TR> 
	  <TR>   
	   <TD> 전화번호 </TD>   
	   <TD> <SELECT NAME="tel1">     
			   <OPTION SELECTED> 010</OPTION>     
			   <OPTION> 02</OPTION>     
			   <OPTION> 053</OPTION>     
			   <OPTION> 011</OPTION>     
		    </SELECT>
		   - <INPUT NAME="tel2" SIZE="4" maxlength=4>
		   - <INPUT NAME="tel3" SIZE="4" maxlength=4> </TD> 
	  </TR>
	  <TR>   
	   <TD> 전공 </TD>   
	   <TD> 
	     <SELECT SIZE="1" NAME="majid">     
	       <OPTION value = "A" SELECTED>경제학</OPTION>     
		   <OPTION value = "B" > 경영학</OPTION>     
		   <OPTION value = "C" > 국어국문학</OPTION>     
		   <OPTION value = "D" > 전자공학</OPTION> 
		   <OPTION value = "E" > 기계공학</OPTION>  
		   <OPTION value = "F" > 물리학</OPTION>      
		 </SELECT> </TD> 
	  </TR>
	  <TR>   
	   <TD>단과대학</TD>   
	   <TD> 
	     <SELECT SIZE="1" NAME="college">     
	       <OPTION  SELECTED>상경대학</OPTION>     
		   <OPTION>인문대학</OPTION>     
		   <OPTION>IT대학</OPTION>     
		   <OPTION>공과대학</OPTION> 
		   <OPTION>자연대학</OPTION>     
		 </SELECT> </TD> 
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
