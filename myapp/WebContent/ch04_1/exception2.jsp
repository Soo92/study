<%@ page contentType="text/html; charset=EUC-KR" 
				   pageEncoding="EUC-KR"
				   isErrorPage="true"
				   %>
<%
		request.setCharacterEncoding("euc-kr");
		String message = exception.getMessage();
		String objMessage = exception.toString();
%>
�����޼��� : <%=message%><br/>
���� Ŭ������� �޼��� : <%=objMessage%> 