<%@ page contentType="text/html; charset=EUC-KR" 
				   pageEncoding="EUC-KR"
				   isErrorPage="true"
				   %>
<%
		request.setCharacterEncoding("euc-kr");
		String message = exception.getMessage();
		String objMessage = exception.toString();
%>
에러메세지 : <%=message%><br/>
에러 클래스명과 메세지 : <%=objMessage%> 