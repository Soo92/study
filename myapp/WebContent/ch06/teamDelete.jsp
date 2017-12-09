<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="ch06.TeamMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		int num = Integer.parseInt(request.getParameter("num"));
		mgr.teamDelete(num);
		response.sendRedirect("teamList.jsp");
%>