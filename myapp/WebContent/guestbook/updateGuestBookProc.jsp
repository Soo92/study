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
		mgr.updateGuestBook(bean);
%>
<script>
	//showGuestBook.jsp 새로고침 => 서버에 재요청
	opener.location.reload();
	self.close();
</script>







