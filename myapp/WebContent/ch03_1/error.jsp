<!-- error.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<%
		request.setCharacterEncoding("euc-kr");
%>
다음과 같은 예외가 발생하였습니다.
<%=exception.getMessage()%>