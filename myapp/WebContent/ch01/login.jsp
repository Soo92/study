<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		String s = null;
		s.length();
%>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
 function check(){
	 //alert("보이나요?");
	 if(document.regFrm.id.value==""){
		 alert("id를 입력하세요.");
		 return;
	 }
	 if(document.regFrm.pass.value==""){
		 alert("비번를 입력하세요.");
		 return;
	 }
	 document.regFrm.submit();
 }
</script>
<div align="center">
	<br/>
	<h2>로그인</h2>
	<form name="regFrm" action="loginProc.jsp">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input name="id"></td>
		</tr>
		<tr>
			<td>비번</td>
			<td><input  type="password" name="pass"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" onclick="check()" value="LOGIN"></td>
		</tr>
	</table>	
	</form>
</div>