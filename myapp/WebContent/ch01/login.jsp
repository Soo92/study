<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		String s = null;
		s.length();
%>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
 function check(){
	 //alert("���̳���?");
	 if(document.regFrm.id.value==""){
		 alert("id�� �Է��ϼ���.");
		 return;
	 }
	 if(document.regFrm.pass.value==""){
		 alert("����� �Է��ϼ���.");
		 return;
	 }
	 document.regFrm.submit();
 }
</script>
<div align="center">
	<br/>
	<h2>�α���</h2>
	<form name="regFrm" action="loginProc.jsp">
	<table border="1">
		<tr>
			<td>���̵�</td>
			<td><input name="id"></td>
		</tr>
		<tr>
			<td>���</td>
			<td><input  type="password" name="pass"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" onclick="check()" value="LOGIN"></td>
		</tr>
	</table>	
	</form>
</div>