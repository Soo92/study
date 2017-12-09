<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mgr" class="board.BoardMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		mgr.insertBoard(request);
		response.sendRedirect("list.jsp");
%>