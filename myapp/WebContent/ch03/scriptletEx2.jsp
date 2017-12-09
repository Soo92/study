<!-- scriptletEx2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		float f = 2.3f;
		int i = Math.round(f);
		java.util.Date d = new java.util.Date();
%>
실수f의 반올림값은? <%=i%><br/>
현재의 날짜와 시간은? <%=d.toString()%><br/>