<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		boolean result = mgr.loginMember(id, pass);
		
		String msg = "�α��� ����";
		String url = "login.jsp";
		
		if(result){
			session.setAttribute("idKey", id);
			msg = "�α��� ����";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>









