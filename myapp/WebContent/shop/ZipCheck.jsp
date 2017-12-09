<%@ page contentType="text/html;charset=EUC-KR"%>
<%@ page import="java.util.*,shop.*"%>
<jsp:useBean id="regMgr" class="shop.RegisterMgr" />

<%
	request.setCharacterEncoding("EUC-KR");

	String check = request.getParameter("check");
	String area3 = request.getParameter("area3");
	Vector<ZipcodeBean> zipcodeList = null;
	int totalList =0;
	if(request.getParameter("check").equals("n")){
		zipcodeList = regMgr.zipcodeRead(area3);
		totalList = zipcodeList.size();
	}
%>

<html>
<head>
<title>�����ȣ�˻�</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
<script>
function dongCheck(){
	if (document.zipForm.area3.value == ""){
		alert("���̸��� �Է��ϼ���");
		document.zipForm.area3.focus();
		return;
	}
	document.zipForm.submit();
}

function sendAddress(zipcode,area){
	opener.document.regForm.zipcode.value=zipcode;
	opener.document.regForm.address.value= area;
	self.close();
}
</script>
</head>
<body bgcolor="#FFFFCC">
<div align="center">
<b>�����ȣ ã��</b>
	<table>
	<form name="zipForm" method="post" action="ZipCheck.jsp">
	<tr>
		<td><br/>
		���̸� �Է� : <input name="area3"> 
		<input type="button" value="�˻�" onclick="dongCheck();"></td>
	</tr>
	<input type="hidden" name="check" value="n">
	</form>
	<%
		if (check.equals("n")) {
			if (zipcodeList.isEmpty()) {
	%>
	<tr>
		<td align="center"><br>
		�˻��� ����� �����ϴ�.</td>
	</tr>
	<%} else {%>
	<tr>
		<td align="center"><br>
		�ذ˻� ��, �Ʒ� �����ȣ�� Ŭ���ϸ� �ڵ����� �Էµ˴ϴ�.</td>
	</tr>
	<%
			for (int i = 0; i < totalList; i++) {
			ZipcodeBean zipBean = zipcodeList.get(i);
			String tempZipcode = zipBean.getZipcode();
			String temptArea1 = zipBean.getArea1();
			String temptArea2 = zipBean.getArea2();
			String temptArea3 = zipBean.getArea3();
			String temptArea4 = zipBean.getArea4();
			String tempArea = temptArea1+" "+
											temptArea2+" "+
											temptArea3+" "+
											temptArea4;
	%>
	<tr>
		<td>
		<a href="javascript:sendAddress('<%=tempZipcode%>','<%=tempArea%>')"><%=tempArea%></a><br>
		<%
			}//for
		}
 	}
 %>
		</td>
	</tr>
	<tr>
		<td align="center"><br/>
			<a href="javascript:this.close();">�ݱ�</a>
		</td>
	</tr>
</table>
</div>
</body>
</html>
