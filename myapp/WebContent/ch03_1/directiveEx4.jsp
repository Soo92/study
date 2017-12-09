<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page trimDirectiveWhitespaces="false"%>
<%
		request.setCharacterEncoding("euc-kr");
		Date date = new Date();
%>
현재의 날짜와 시간은? <%=date.toLocaleString()%><br/>
sessionId : <%=session.getId()%>
