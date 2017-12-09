<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="board.BoardMgr"/>
<jsp:useBean id="reBean" class="board.BoardBean"/>
<jsp:setProperty property="*" name="reBean"/>
<%
		mgr.replyUpBoard(reBean.getRef(), reBean.getPos());
		mgr.replyBoard(reBean);
		String nowPage = request.getParameter("nowPage");
		response.sendRedirect("list.jsp?nowPage="+nowPage);
%>