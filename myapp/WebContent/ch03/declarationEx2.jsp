<!-- declarationEx2.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!
		int one;
		int two =1;
		public int plus(){
			return one+two;
		}
		String msg;
		int three;
%>
one�� two�� ����? <%=plus()%><br/>
String msg�� ����? <%=msg%><br/>
int three�� ����? <%=three%><br/>