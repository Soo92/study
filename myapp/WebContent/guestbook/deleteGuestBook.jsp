<%@page import="guestbook.GuestBookMgr"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String url = "showGuestBook.jsp";
		if(request.getParameter("num")==null){
			response.sendRedirect(url);
		}else{
			int num = 
			Integer.parseInt(request.getParameter("num"));
			GuestBookMgr mgr = new 	GuestBookMgr();
			boolean result = mgr.deleteGuestBook(num);
			String msg = "삭제에 실패 하였습니다.";
			if(result){
				//댓글 전부 삭제
				msg = "삭제 하였습니다.";
			}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>	
<%}%>





