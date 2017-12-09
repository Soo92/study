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
				<td><font color="#FFFFFF">��ǰ</font></td>
				<td><font color="#FFFFFF">����</font></td>
				<td><font color="#FFFFFF">����</font></td>
				<td><font color="#FFFFFF">����/����</font></td>
				<td><font color="#FFFFFF">��ȸ</font></td>
			</tr>
			<%
					int totalPrice = 0;
					Hashtable<Integer, OrderBean> hCart = 
							cartMgr.getCartList();
					if(hCart.isEmpty()){
			%>
			<tr>
				<td colspan="5" align="center">
					��ٱ��ϴ� ��� �ֽ��ϴ�.
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
							int price = pbean.getPrice();//��ǰ����
							int quantity = order.getQuantity();//�ֹ�����
							int subTotal = price*quantity;//�����Ѿ�
							totalPrice+=subTotal;//�ֹ���ü�Ѿ�
							String pName = pbean.getName();//��ǰ�̸�
			%>
					<form method="post"action="CartProc.jsp">
						<input type="hidden" name="productNo" value="<%=productNo%>">
						<input type="hidden" name="flag">
					<tr align="center"> 
						<td><%=pName%></td>
						<td>
							<input  name=quantity value="<%=quantity%>" size="5">��</td>
						<td><%=UtilMgr.intFormat(subTotal)%>��</td>
						<td>
						<input type="button" value="����" size="3" onclick="javascript:cartUpdate(this.form)"> /
						<input type="button" value="����" size="3" onclick="javascript:cartDelete(this.form)">
					</td>
					<td align="center">
						<a href="javascript:productDetail('<%=productNo%>')">�󼼺���</a></td>
					</tr>
					</form>	
				<%}//while%>
				<tr>
					<td colspan="4" align="right">
						�� �ݾ� : <%=UtilMgr.intFormat(totalPrice)%>��
					</td>
					<td align="center">
						<a href="OrderProc.jsp">�ֹ��ϱ�</a>
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