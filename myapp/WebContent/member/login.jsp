<!-- login.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String id = (String)session.getAttribute("idKey");
%>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("���̵� �Է��� �ּ���.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pass.value == "") {
			alert("��й�ȣ�� �Է��� �ּ���.");
			document.loginFrm.pass.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
<body>
<div align="center">
<br/><br/>
<%if(id!=null){%>
<b><%=id%></b>�� ȯ���մϴ�.<br/>
���ѵ� ����� ��� �� ���� �ֽ��ϴ�.<br/>
<a href="logout.jsp">�α׾ƿ�</a>
<%}else{%>
<form name="loginFrm" method="post" action="loginProc.jsp">
			<table>
				<tr>
					<td align="center" colspan="2"><h4>�α���</h4></td>
				</tr>
				<tr>
					<td>�� �� ��</td>
					<td><input type="text" name="id" value=""></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td><input type="password" name="pass" value=""></td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="right">
							<input type="button" value="�α���" onclick="loginCheck()">&nbsp;
							<input type="button" value="ȸ������" onClick="javascript:location.href='member.jsp'">
						</div>
					</td>
				</tr>
			</table>
		</form>
<%}%>
</div>
</body>





