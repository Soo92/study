<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="mgr" class="guestbook.GuestBookMgr"/>
<jsp:useBean id="bean" class="guestbook.GuestBookBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
		bean.setIp(request.getRemoteAddr());
		//��б� ���� 1�� ����
		if(bean.getSecret()==null){
			bean.setSecret("0");
		}
		mgr.postGuestBook(bean);
		response.sendRedirect("showGuestBook.jsp");
%>