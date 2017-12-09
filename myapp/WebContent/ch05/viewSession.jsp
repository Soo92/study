<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		Enumeration en = session.getAttributeNames();
		while(en.hasMoreElements()){
			String name = (String)en.nextElement();
			String value = (String)session.getAttribute(name);
			out.println("session name : " + name + "<br/>");
			out.println("session value : " + value + "<br/>");
		}
%>