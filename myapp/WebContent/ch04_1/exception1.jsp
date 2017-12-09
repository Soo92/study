<%@ page contentType="text/html; charset=EUC-KR" 
		           pageEncoding="EUC-KR"
		           errorPage="exception2.jsp"
		           %>
<%
		request.setCharacterEncoding("euc-kr");
		int one = 1;
		int two = 0;
%>
one / two = <%=one/two%>