<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String season = request.getParameter("season");
		String fruit = request.getParameter("fruit");
		
		String id =  (String)session.getAttribute("idKey");
		String sessionId = session.getId();
		int intelvalTime = session.getMaxInactiveInterval();
		
		if(id!=null){
%>
		<b><%=id%></b>���� �����ϴ� ������ ������
		<b><%=season%>, <%=fruit %></b>�Դϴ�.<br/>
		����ID : <%=sessionId %><br/>
		���������ð� : <%=intelvalTime %><br/>
		<a href='session2.jsp'>�α׾ƿ�</a>
<%			
		}else{
			out.println("�������� ������ �α��� ����<br/>");
			out.println("<a href='session1.html'>�α���</a>");
		}
%>










