<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");%>
<!-- TeamMgr mgr = new TeamMgr(); -->
<jsp:useBean id="mgr" class="ch06.TeamMgr"/>
<!-- TeamBean bean = new TeamBean(); -->
<jsp:useBean id="bean" class="ch06.TeamBean"/>
<jsp:setProperty property="*" name="bean"/>
<% 
		boolean result = mgr.teamPost(bean);
		String str = "가입실패";
		String location = "teamPost.html";
		if(result){
			str = "가입성공";
			location = "teamList.jsp";
		}
%>
<script>
	alert("<%=str%>");
	location.href="<%=location%>";
</script>



