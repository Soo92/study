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
one과 two의 합은? <%=plus()%><br/>
String msg의 값은? <%=msg%><br/>
int three의 값은? <%=three%><br/>