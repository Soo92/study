<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		//application 내장객체는 webapps에 등록된 application 객체
		//서버 정보와 자원 , 이벤트 로그 같은 정보 제공
		
		//scope(범위)
		application.setAttribute("myKey", "key111");
		
		String serverInfo = application.getServerInfo();
		String mineType = application.getMimeType("reqeust1.html");
		String realPath = application.getRealPath("/");
		
		application.log("application 내부 객체 로그 테스트");
%>
serverInfo : <%=serverInfo%><br/>
mineType : <%=mineType%><br/>
realPath : <%=realPath%><br/>