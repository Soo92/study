<!-- error.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<%
		request.setCharacterEncoding("euc-kr");
%>
������ ���� ���ܰ� �߻��Ͽ����ϴ�.
<%=exception.getMessage()%>