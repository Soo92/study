<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="mgr" class="guestbook.GuestBookMgr"/>
<jsp:useBean id="cbean" class="guestbook.CommentBean"/>
<jsp:setProperty property="*" name="cbean"/>
<%
		String flag = request.getParameter("flag");
		if(flag.equals("insert")){
			mgr.postComment(cbean);
		}else if(flag.equals("delete")){
			mgr.deleteComment(cbean.getCnum());
		}
		response.sendRedirect("showGuestBook.jsp");
%>