<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		//config는 서블릿이 만들어 질때 참조해야 하는 정보를 가지고 있는 클래스
	   String sevletName = config.getServletName();
	   Enumeration<String> e = 
			   config.getInitParameterNames();
	   while(e.hasMoreElements()){
		   String s = e.nextElement();
		   out.println(s + " : " + config.getInitParameter(s)
		   	+"<br/>");
	   }
%>
<%=sevletName%>