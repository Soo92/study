<!-- createSession.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");

		String id = "simba222";
		String pass = "1234";
		
		//id�� pass�� session�� ����
		session.setAttribute("logID", id);
		session.setAttribute("logPW", pass); 
%>
������ ���ǿ� id�� pass�� �����Ͽ����ϴ�.<br/>
<a href="viewSession.jsp">�������� Ȯ��</a>
 