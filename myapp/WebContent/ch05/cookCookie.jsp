<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String cookieName = "myCookie";
		Cookie cookie 
		= new Cookie(cookieName, "Apple");
		cookie.setMaxAge(60);//1��
		cookie.setValue("Melone");
		response.addCookie(cookie);
%>
��Ű�� ����ϴ�.<br/>
��Ű ������ <a href="tasteCookie.jsp">�����!!!</a>
