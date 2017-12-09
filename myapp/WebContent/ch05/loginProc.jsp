<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="ch05.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		boolean result = mgr.loginMember(id, pass);
		
		String msg = "로그인 실패";
		String url = "login.jsp";
		
		if(result){
			session.setAttribute("idKey", id);
			msg = "로그인 성공";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>









