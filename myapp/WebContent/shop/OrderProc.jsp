<%@page import="java.util.Enumeration"%>
<%@page import="shop.OrderBean"%>
<%@page import="java.util.Hashtable"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="cartMgr" scope="session" class="shop.CartMgr"/>
<jsp:useBean id="orderMgr" class="shop.OrderMgr"/>
<jsp:useBean id="proMgr" class="shop.ProductMgr"/>
<%
		String msg ="";
		Hashtable<Integer, OrderBean> hCart = 
				cartMgr.getCartList();
		Enumeration<Integer> hCartKey = hCart.keys();
		if(!hCart.isEmpty()){
			while(hCartKey.hasMoreElements()){
				OrderBean order =
						hCart.get(hCartKey.nextElement());
				orderMgr.insertOrder(order);//�ֹ�ó��
				proMgr.reduceProduct(order);//������
				cartMgr.deleteCart(order);//��ٱ��� ����
			}
			msg = "�ֹ�ó�� �Ͽ����ϴ�.";
		}else{
			msg = "��ٱ��ϰ� ������ϴ�.";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "OrderList.jsp";
</script>





















