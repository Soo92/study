<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");

		//���ǿ� ����� idKey���� ����
		session.removeAttribute("idKey");
		//���� ��ü�� ��ä�� ����
		session.invalidate();
		response.sendRedirect("session1.html");
%>