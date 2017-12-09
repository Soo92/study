<!-- createSession.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");

		String id = "simba222";
		String pass = "1234";
		
		//id와 pass를 session에 저장
		session.setAttribute("logID", id);
		session.setAttribute("logPW", pass); 
%>
생성된 세션에 id와 pass를 저장하였습니다.<br/>
<a href="viewSession.jsp">세션정보 확인</a>
 