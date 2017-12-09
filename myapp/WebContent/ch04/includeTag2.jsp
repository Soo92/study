<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
%>
<!-- request 정보 같이 넘어간다. -->
<jsp:include page="includeTagTop2.jsp">
	<jsp:param value="홍길동" name="name"/>
</jsp:include>