<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
%>
forward Tag의 포워딩 되기 전에 페이지입니다.
<!-- request 정보도 같이 포워딩 된다. -->
<jsp:forward page="forwardTag1_2.jsp"/>

