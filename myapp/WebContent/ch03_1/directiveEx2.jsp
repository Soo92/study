<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page session="true" 
                   buffer="16kb"
                   autoFlush="true"
                   isThreadSafe="true"
%>
<%
		request.setCharacterEncoding("euc-kr");
		Date date = new Date();
%>
������ ��¥�� �ð���? <%=date.toLocaleString()%><br/>
sessionId : <%=session.getId()%>