<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
<div align="center">
<br/><br/>
<table>
	<tr>
		<td bgcolor="#84F399" width="450" align="center">�۾���</td>
	</tr>
</table>
<br/>
<form name="postFrm" method="post" action="postProc.jsp" enctype="multipart/form-data">
<table>
	<tr>
		<td align=center>
		<table>
			<tr>
				<td  width="100">�� ��</td>
				<td>
				<input name="name" size="10" maxlength="8"></td>
			</tr>
			<tr>
				<td>�� ��</td>
				<td>
				<input name="subject" size="50" maxlength="30"></td>
			</tr>
			<tr>
				<td>�� ��</td>
				<td><textarea name="content" rows="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<td>��� ��ȣ</td>
				<td><input type="password" name="pass" size="15" maxlength="15"></td>
			</tr>
			<tr>
			 <tr>
     			<td>����ã��</td> 
     			<td><input type="file" name="filename" size="50" maxlength="50"></td>
    		</tr>
 			<tr>
 				<td>����Ÿ��</td>
 				<td> HTML<input type=radio name="contentType" value="HTTP" >&nbsp;&nbsp;&nbsp;
  			 	TEXT<input type=radio name="contentType" value="TEXT" checked>
  			 	</td>
 			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td colspan="2">
					 <input type="submit" value="���">
					 <input type="reset" value="�ٽþ���">
					 <input type="button" value="����Ʈ" onClick="javascript:location.href='list.jsp'">
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
</form>
</div>
</body>
</html>