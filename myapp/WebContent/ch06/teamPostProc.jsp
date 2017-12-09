<%@page import="ch06.TeamBean"%>
<%@page import="ch06.TeamMgr"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		TeamMgr mgr = new TeamMgr();
		TeamBean bean = new TeamBean();
		
		String name = request.getParameter("name");
		String city = request.getParameter("city");
		int age = Integer.parseInt(request.getParameter("age"));
		String team = request.getParameter("team");
		
		bean.setName(name);
		bean.setCity(city);
		bean.setAge(age);
		bean.setTeam(team);
		
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









