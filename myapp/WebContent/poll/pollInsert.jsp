<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>JSP Poll</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript">
	function send() {
		f = document.frm;
		sdate = f.sdateY.value+"-"+f.sdateM.value+"-"+f.sdateD.value;
		f.sdate.value=sdate;
		edate = f.edateY.value+"-"+f.edateM.value+"-"+f.edateD.value;
		f.edate.value=edate;
		f.submit();
	}
</script>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br />
		<h2>��ǥ���α׷�</h2>
		<hr width="50%" />
		<b>�����ۼ�</b>
		<hr width="50%" />
		<form name="frm" method="post" action="pollInsertProc.jsp">
			<table border="1">
				<tr>
					<th width="50">����</th>
					<td colspan="2" width="450"><input name="question" size="50"></td>
				</tr>
				<tr>
					<th rowspan="10">�׸�</th>
					<%
						for (int i = 1; i <= 4; i++) {
							out.println("<td>" + (i * 2 - 1) + ": <input name='item'></td>");
							out.println("<td>" + (i * 2) + ": <input name='item'></td>");
							out.println("</tr>");
							if (i == 9) {
								out.println("");
							} else {
								out.println("<tr>");
							}
						}//for end
					%>
				<tr>
					<th>������</th>
					<td colspan="2">
						<select name="sdateY">
							<option value="2017">2017</option>
							<option value="2018">2018</option>
					</select>�� 
					<select name="sdateM">
							<%
								for (int i = 1; i <= 12; i++) {
									out.println("<option value='" + i + "'>" + i+"</option>");
								}
							%>
					</select>�� 
					<select name="sdateD">
							<%
								for (int i = 1; i <= 31; i++) {
									out.println("<option value='" + i + "'>" + i+"</option>");
								}
							%>
					</select>��
					</td>
				</tr>
				<tr>
					<th>������</th>
					<td colspan=2>
						<select name="edateY">
							<option value="2017">2017</option>
							<option value="2018">2018</option>
					</select>�� 
					<select name="edateM">
							<%
								for (int i = 1; i <= 12; i++) {
									out.println("<option value='" + i + "'>" + i+"</option>");
								}
							%>
					</select>�� 
					<select name="edateD">
							<%
								for (int i = 1; i <= 31; i++) {
									out.println("<option value='" + i + "'>" + i+"</option>");
								}
							%>
					</select>��
					</td>
				</tr>
				<tr>
					<th>���ߴ亯</th>
					<td colspan=2>
						<input type="radio" name="type" value="1"checked>yes 
						<input type="radio" name="type" value="0">no
					</td>
				</tr>
				<tr>
					<td colspan=3>
					<input type="button" value="�ۼ��ϱ�" onclick="send()"> 
					<input type="reset" value="�ٽþ���"> 
					<input type="button" value="����Ʈ" onclick="javascript:location.href='pollList.jsp'">
					</td>
				</tr>
			</table>
			<input type="hidden" name="sdate">
			<input type="hidden" name="edate">
		</form>
	</div>
</body>
</html>