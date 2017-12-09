<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		Date d = new Date();
%>
<hr/>
include 지시자의 Bottom입니다.<p/>
<%=d.toLocaleString()%>
</body>
</html>