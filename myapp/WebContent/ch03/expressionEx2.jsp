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
������ �����ϱ�� ���� �ϱ��? <%=h<12?"����":"����" %><br/>
one�� two �� �߿� ū ���ڴ�? <%=operation(one, two) %>









