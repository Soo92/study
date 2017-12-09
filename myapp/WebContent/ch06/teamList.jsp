<%@page import="ch06.TeamBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="ch06.TeamMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		Vector<TeamBean> vlist = mgr.teamList();
%>
<link href="style.css" rel="stylesheet" type="text/css">
<body>
<div align="center"><p/>
<h1>Team List</h1>
<table border="1">
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>사는곳</th>
		<th>나이</th>
		<th>팀명</th>
	</tr>
	<%
			for(int i=0;i<vlist.size();i++){
				TeamBean bean = vlist.get(i);
				int num = bean.getNum();
	%>
	<tr align="center">
		<td>
			<a href="teamSelect.jsp?num=<%=num%>"><%=i+1%></a>
		</td>
		<td><%=bean.getName()%></td>
		<td><%=bean.getCity() %></td>
		<td><%=bean.getAge() %></td>
		<td><%=bean.getTeam() %></td>
	</tr>	
	<%}//----for%>
</table><p/>
<a href="teamPost.html">POST</a>
</div>
</body>








