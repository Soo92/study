<!-- scriptletEx2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		float f = 2.3f;
		int i = Math.round(f);
		java.util.Date d = new java.util.Date();
%>
�Ǽ�f�� �ݿø�����? <%=i%><br/>
������ ��¥�� �ð���? <%=d.toString()%><br/>