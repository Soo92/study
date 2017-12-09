<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="mgr" class="ch06.TeamMgr"/>
<jsp:useBean id="bean" class="ch06.TeamBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
		boolean result = mgr.teamUpdate(bean);
		String str = "수정실패";
		String location = "teamList.jsp";
		if(result){
			str = "수정성공";
			location = "teamSelect.jsp?num="+bean.getNum();
		}	
%>
<script>
	alert("<%=str%>");
	location.href = "<%=location%>";
</script>





