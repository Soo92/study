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
			String msg = "������ ���� �Ͽ����ϴ�.";
			if(result){
				//��� ���� ����
				msg = "���� �Ͽ����ϴ�.";
			}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>	
<%}%>





