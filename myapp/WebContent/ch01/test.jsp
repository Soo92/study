<!-- test.jsp -->
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="ch01.Test"%>
<%
		Test t = new Test();
		t.msg = "���� �̷�� ����.";
		t.print();
		Date d = new Date();
%>
<%=t.msg%><br/>
<%=d.toLocaleString()%>