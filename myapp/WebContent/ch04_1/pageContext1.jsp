<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		//pageContext : 페이지의 내용을 객체화 시킨 클래스
		//다른 내장객체를 생산하는 클래스
		pageContext.include("session1.jsp");
		pageContext.forward("session1.jsp");
%>
pageContext 예제