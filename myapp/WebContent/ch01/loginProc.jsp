<!-- loginProc.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		//�ڹٿ���
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

%>
���̵� : <%=id%><br/>
��� : <%=pass%><br/>