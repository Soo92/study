<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="regMgr" class="shop.RegisterMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		regMgr.sendAccount(id);
		response.sendRedirect("RegisterMgr.jsp");
%>