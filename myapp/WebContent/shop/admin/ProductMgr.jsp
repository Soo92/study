<%@ page contentType="text/html;charset=EUC-KR"%>
<%@ page import="java.util.*,shop.*"%>
<jsp:useBean id="proMgr" class="shop.ProductMgr" />
<html>
<head>
<title>Simple Shopping Mall Admin</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">
<%@ include file="Top.jsp"%>
<table width="75%" align="center" bgcolor="#FFFF99">
	<tr>
		<td align="center" bgcolor="#FFFFCC">
		<table width="95%" align="center" bgcolor="#FFFF99" border="1">
			<tr  align="center" bgcolor="#996600">
				<td><font color="#FFFFFF">이름</font></td>
				<td><font color="#FFFFFF">가격</font></td>
				<td><font color="#FFFFFF">날짜</font></td>
				<td><font color="#FFFFFF">재고</font></td>
				<td>&nbsp;</td>
			</tr>
			<%
				Vector<ProductBean> vResult = proMgr.getProductList();
				if (vResult.size() == 0) {
			%>
			<tr>
				<td align="center" colspan="5">등록된 상품이 없습니다.</td>
			</tr>
			<%
				} else {
					for (int i = 0; i < vResult.size(); i++) {
						ProductBean product = vResult.get(i);
			%>
			<tr  align="center">
				<td><%=product.getName()%></td>
				<td><%=UtilMgr.intFormat(product.getPrice())%></td>
				<td><%=product.getDate()%></td>
				<td><%=product.getStock()%></td>
				<td>
				<a href="javascript:productDetail('<%=product.getNo()%>')">상세보기</a></td>
			</tr>
			<%
					}//for
				}//if
			%>
			<tr>
				<td colspan="5" align="center">
					<a href="ProductInsert.jsp">상품등록</a>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<%@ include file="Bottom.jsp"%>
<form name="detail" method="post" action="ProductDetail.jsp">
	<input type="hidden" name="no">
</form>
</body>
</html>