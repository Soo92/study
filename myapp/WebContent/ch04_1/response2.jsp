<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		response.setHeader("Progma", "no-cache");
		if(request.getProtocol().equals("HTTP/1.1")){
			response.setHeader("Cache-Control", "no-cache");
		}
%>
response1.jsp ��û�� response2.jsp���� ����