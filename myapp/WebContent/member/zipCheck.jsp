<%@page import="member.ZipcodeBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String check = request.getParameter("check");
		String area3 = null;
		Vector<ZipcodeBean> vlist = null;
		if(check.equals("n")){
			area3 = request.getParameter("area3");
			vlist = mgr.zipcodeSearch(area3);
		}
%>
<html>
<head>
<title>�����ȣ �˻�</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function dongCheck() {
		frm = document.zipFrm;
		if (frm.area3.value == "") {
			alert("���̸��� �Է��ϼ���.");
			frm.area3.focus();
			return;
		}
		frm.action = "zipCheck.jsp"
		frm.submit();
	}

	function sendAdd(zipcode, adds) {
		//alert(zipcode + " : " + adds);
		opener.document.regFrm.zipcode.value=zipcode;
		opener.document.regFrm.address.value=adds;
		self.close();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br />
		<form name="zipFrm" method="post">
			<table>
				<tr>
					<td><br> ���̸� �Է� : <input name="area3"> 
					<input type="button" value="�˻�"
						onclick="dongCheck();"></td>
				</tr>
				<!-- �˻���� ���� -->
				<%
					if (check.equals("n")) {
						if (vlist.isEmpty()) {
				%>
				<tr>
					<td align="center"><br>�˻��� ����� �����ϴ�.</td>
				</tr>
				<%
					} else {
				%>
				<tr>
					<td align="center"><br/>�ذ˻� ��, �Ʒ� �����ȣ�� Ŭ���ϸ� �ڵ����� �Էµ˴ϴ�.</td>
				</tr>
				<%
					for (int i = 0; i < vlist.size(); i++) {
						 ZipcodeBean bean = vlist.get(i);
						 String rZipcode = bean.getZipcode();
						 String rArea1 = bean.getArea1();
						 String rArea2 = bean.getArea2();
						 String rArea3 = bean.getArea3();
						 String rArea4 = bean.getArea4();
						 String adds = rArea1+" "+rArea2+" "+rArea3+" "+rArea4;
				%>
				<tr>
					<td><a href="#" 
					onclick="javascript:sendAdd('<%=rZipcode%>','<%=adds%>')">
					<%=rZipcode + " "+ adds%></a></td>
				</tr>
				<%
							}//for
						}//if
					}//if
				%>
				<!-- �˻���� �� -->
				<tr>
					<td align="center"><br />
					<a href="#" onClick="self.close()">�ݱ�</a></td>
				</tr>
			</table>
			<input type="hidden" name="check" value="n">
		</form>
	</div>
</body>
</html>