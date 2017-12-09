<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="cartMgr" scope="session" class="shop.CartMgr"/>
<jsp:useBean id="order" class="shop.OrderBean"/>
<jsp:setProperty property="*" name="order"/>
<%
		String id = (String)session.getAttribute("idKey");
		String msg = "";
		if(id==null){
			response.sendRedirect("Login.jsp");
		}else{
			String flag = request.getParameter("flag");
			//flag : insert, update, del
			if(flag.equals("insert")){
				order.setId(id);
				cartMgr.addCart(order);
				msg = "��ٱ��Ͽ� ��ҽ��ϴ�.";
			}else if(flag.equals("update")){
				order.setId(id);
				cartMgr.updateCart(order);
				msg = "��ٱ��ϸ� ���� �Ͽ����ϴ�.";
			}else if(flag.equals("del")){
				cartMgr.deleteCart(order);
				msg = "��ٱ��ϸ� ���� �Ͽ����ϴ�.";
			}
%>
			<script>
				alert("<%=msg%>");
				location.href = "CartList.jsp";
			</script>	
<%}%>








