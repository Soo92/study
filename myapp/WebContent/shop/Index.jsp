<%@page contentType="text/html;charset=EUC-KR"%>
<html>
<head>
<title>Simple Shopping Mall </title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">
<%@ include file="Top.jsp" %>
<table width="75%" align="center" bgcolor="#FFFF99" height="100%">
	<%if(id != null){%>
	<tr> 
		<td align="center"><%=id%>�� �湮�� �ּż� �����մϴ�.</td>
	</tr>
	<%}else{%>
	<tr>
		<td align="center">�α��� �Ͻ� �� �̿��� �ּ���.</td>
	</tr>
	<%}%>
</table>
<%@ include file="Bottom.jsp" %>
</body>
</html>  