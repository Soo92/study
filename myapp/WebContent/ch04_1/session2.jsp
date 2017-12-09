<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");

		//세션에 저장된 idKey값을 제거
		session.removeAttribute("idKey");
		//세션 객체를 통채로 제거
		session.invalidate();
		response.sendRedirect("session1.html");
%>