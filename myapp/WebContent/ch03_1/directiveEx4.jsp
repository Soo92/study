<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page trimDirectiveWhitespaces="false"%>
<%
		request.setCharacterEncoding("euc-kr");
		Date date = new Date();
%>
������ ��¥�� �ð���? <%=date.toLocaleString()%><br/>
sessionId : <%=session.getId()%>
