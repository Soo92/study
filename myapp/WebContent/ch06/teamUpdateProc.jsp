<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="mgr" class="ch06.TeamMgr"/>
<jsp:useBean id="bean" class="ch06.TeamBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
		boolean result = mgr.teamUpdate(bean);
		String str = "��������";
		String location = "teamList.jsp";
		if(result){
			str = "��������";
			location = "teamSelect.jsp?num="+bean.getNum();
		}	
%>
<script>
	alert("<%=str%>");
	location.href = "<%=location%>";
</script>





