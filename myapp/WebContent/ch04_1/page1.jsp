<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");

		//page는 jsp코드가 서블릿으로 변환. 변환된 servlet 객체 자신을 의미하는 클래스
		String pageInfo = this.getServletInfo();
		//Object page = this;
%>
<%=pageInfo%>