<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");

		//page�� jsp�ڵ尡 �������� ��ȯ. ��ȯ�� servlet ��ü �ڽ��� �ǹ��ϴ� Ŭ����
		String pageInfo = this.getServletInfo();
		//Object page = this;
%>
<%=pageInfo%>