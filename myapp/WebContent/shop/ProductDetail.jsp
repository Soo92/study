<%@page contentType="text/html; charset=EUC-KR"%>
<%@page import="shop.UtilMgr"%>
<%@page import="shop.ProductBean"%>
<jsp:useBean id="proMgr" class="shop.ProductMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		int no = Integer.parseInt(request.getParameter("no"));
		ProductBean pbean = proMgr.getProduct(no);
%>
<html>
<head>
<title>Simple Shopping Mall</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">
<%@ include file="Top.jsp" %>
<form name="cart" action="CartProc.jsp">
<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">
		<table width="95%" bgcolor="#FFFF99" border="1">
		<tr bgcolor="#996600"> 
		<td colspan="3" align="center">
			<font color="#FFFFFF"><%=pbean.getName()%></font>
		</td>
		</tr>
		<tr> 
		<td width="20%">
		<img src="data/<%=pbean.getImage()%>" height="150" width="150">
		</td>
		<td width="30%" valign="top">
			<table>
			<tr>
				<td><b>��ǰ�̸� : </b><%=pbean.getName()%></td>
			</tr>			
			<tr>
				<td><b>��    �� : </b><%=UtilMgr.monFormat(pbean.getPrice())%>��</td>
			</tr>
			<tr>
				<td><b>��    �� : </b><input name="quantity" size="5" value="1">��</td>
			</tr>
			<tr>
			<td align="center">
				<input type="submit" value="��ٱ��� ���">
			</td>
			</tr>
			</table>
			<input type="hidden" name="productNo" value="<%=pbean.getNo()%>">	
			<input type="hidden" name="flag" value="insert">			
		</td>
		<td width="50%" valign="top">
		<b>�󼼼���</b><br/>
		<pre><%=pbean.getDetail()%></pre>
		</td>
		</tr>
		</table>
	</td>
	</tr>
</table>
</form>
<%@ include file="Bottom.jsp" %>
</body>
</html>