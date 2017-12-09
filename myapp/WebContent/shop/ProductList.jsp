<!-- ProductList.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@page import="shop.UtilMgr"%>
<%@page import="shop.ProductBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="proMgr" class="shop.ProductMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		Vector<ProductBean> pvlist = proMgr.getProductList();
%>
<html>
<head>
<title>Simple Shopping Mall</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">
	<%@ include file="Top.jsp" %>
	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">
		<table width="95%" bgcolor="#FFFF99" border="1">
			<tr align="center" bgcolor="#996600"> 
				<td><font color="#FFFFFF">이름</font></td>
				<td><font color="#FFFFFF">가격</font></td>
				<td><font color="#FFFFFF">날짜</font></td>
				<td><font color="#FFFFFF">재고</font></td>
				<td><font color="#FFFFFF">상세보기</font></td>
			</tr>
		<% 
				for(int i=0; i<pvlist.size(); i++){
					ProductBean product = pvlist.get(i);
		%>
			<tr align="center"> 
				<td><%=product.getName()%></td>
				<td><%=UtilMgr.monFormat(product.getPrice())%></td>
				<td><%=product.getDate()%></td>
				<td><%=product.getStock()%></td>
				<td>
				<input type="button" value="상세보기" 
			onclick="productDetail('<%=product.getNo()%>')" >
			</td>
		</tr>
		<%}%>
		</table>
	</td>
	</tr>
	</table>
	<form name="detail" method="post" action="ProductDetail.jsp" >
		<input type="hidden" name="no">
	</form>
	<%@ include file="Bottom.jsp" %>
</body>
</html>