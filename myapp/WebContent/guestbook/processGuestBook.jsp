<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="mgr" class="guestbook.GuestBookMgr"/>
<jsp:useBean id="bean" class="guestbook.GuestBookBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
		bean.setIp(request.getRemoteAddr());
		//비밀글 경우는 1이 저장
		if(bean.getSecret()==null){
			bean.setSecret("0");
		}
		mgr.postGuestBook(bean);
		response.sendRedirect("showGuestBook.jsp");
%>