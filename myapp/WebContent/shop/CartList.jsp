<%@page import="shop.UtilMgr"%>
<%@page import="shop.ProductBean"%>
<%@page import="java.util.Enumeration"%>
<%@page import="shop.OrderBean"%>
<%@page import="java.util.Hashtable"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="cartMgr" scope="session" class="shop.CartMgr"/>
<jsp:useBean id="proMgr" class="shop.ProductMgr"/>
<% 
		if(session.getAttribute("idKey")==null){
			response.sendRedirect("Login.jsp");
		}
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
		<table width="95%" align="center" bgcolor="#FFFF99" border="1">
			<tr align="center" bgcolor="#996600">
				<td><font color="#FFFFFF">제품</font></td>
				<td><font color="#FFFFFF">수량</font></td>
				<td><font color="#FFFFFF">가격</font></td>
				<td><font color="#FFFFFF">수정/삭제</font></td>
				<td><font color="#FFFFFF">조회</font></td>
			</tr>
			<%
					int totalPrice = 0;
					Hashtable<Integer, OrderBean> hCart = 
							cartMgr.getCartList();
					if(hCart.isEmpty()){
			%>
			<tr>
				<td colspan="5" align="center">
					장바구니는 비어 있습니다.
				</td>
			</tr>
			<%			
					}else{
						Enumeration<Integer> hCartKey = hCart.keys();
						while(hCartKey.hasMoreElements()){
							OrderBean order = 
									hCart.get(hCartKey.nextElement());
							ProductBean pbean = 
									proMgr.getProduct(order.getProductNo());
							int productNo = pbean.getNo();
							int price = pbean.getPrice();//상품가격
							int quantity = order.getQuantity();//주문수량
							int subTotal = price*quantity;//상춤총액
							totalPrice+=subTotal;//주문전체총액
							String pName = pbean.getName();//상품이름
			%>
					<form method="post"action="CartProc.jsp">
						<input type="hidden" name="productNo" value="<%=productNo%>">
						<input type="hidden" name="flag">
					<tr align="center"> 
						<td><%=pName%></td>
						<td>
							<input  name=quantity value="<%=quantity%>" size="5">개</td>
						<td><%=UtilMgr.intFormat(subTotal)%>원</td>
						<td>
						<input type="button" value="수정" size="3" onclick="javascript:cartUpdate(this.form)"> /
						<input type="button" value="삭제" size="3" onclick="javascript:cartDelete(this.form)">
					</td>
					<td align="center">
						<a href="javascript:productDetail('<%=productNo%>')">상세보기</a></td>
					</tr>
					</form>	
				<%}//while%>
				<tr>
					<td colspan="4" align="right">
						총 금액 : <%=UtilMgr.intFormat(totalPrice)%>원
					</td>
					<td align="center">
						<a href="OrderProc.jsp">주문하기</a>
					</td>
				</tr>		
			<%}//if-else%>
		</table>
	</td>
	</tr>
	</table>
	<%@ include file="Bottom.jsp" %>
	<form name="detail" method="post" action="ProductDetail.jsp" >
		<input type="hidden" name="no">
	</form>	
</body>
</html>