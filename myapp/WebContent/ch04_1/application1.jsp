<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		//application ���尴ü�� webapps�� ��ϵ� application ��ü
		//���� ������ �ڿ� , �̺�Ʈ �α� ���� ���� ����
		
		//scope(����)
		application.setAttribute("myKey", "key111");
		
		String serverInfo = application.getServerInfo();
		String mineType = application.getMimeType("reqeust1.html");
		String realPath = application.getRealPath("/");
		
		application.log("application ���� ��ü �α� �׽�Ʈ");
%>
serverInfo : <%=serverInfo%><br/>
mineType : <%=mineType%><br/>
realPath : <%=realPath%><br/>