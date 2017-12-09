<!-- includeTagTop2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		String siteName = request.getParameter("siteName");
%>
name : <%=name%><br/>
siteName : <%=siteName%><br/>
<hr color="blue"/>