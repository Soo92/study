<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		//pageContext : �������� ������ ��üȭ ��Ų Ŭ����
		//�ٸ� ���尴ü�� �����ϴ� Ŭ����
		pageContext.include("session1.jsp");
		pageContext.forward("session1.jsp");
%>
pageContext ����