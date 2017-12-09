<!-- expressionEx2.jsp -->
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		Date d = new Date();
		int h = d.getHours();
		int one = 10;
		int two = 12;
%>
<%!
		public int operation(int i, int j){
			return i>j? i:j;
		}
%>
지금은 오전일까요 오후 일까요? <%=h<12?"오전":"오후" %><br/>
one과 two 둘 중에 큰 숫자는? <%=operation(one, two) %>









