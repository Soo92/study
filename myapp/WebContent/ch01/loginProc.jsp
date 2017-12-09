<!-- loginProc.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		//자바영역
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

%>
아이디 : <%=id%><br/>
비번 : <%=pass%><br/>