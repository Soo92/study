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
		<b><%=id%></b>님이 좋아하는 계절과 과일은
		<b><%=season%>, <%=fruit %></b>입니다.<br/>
		세션ID : <%=sessionId %><br/>
		세션유지시간 : <%=intelvalTime %><br/>
		<a href='session2.jsp'>로그아웃</a>
<%			
		}else{
			out.println("여러가지 이유로 로그인 실패<br/>");
			out.println("<a href='session1.html'>로그인</a>");
		}
%>










