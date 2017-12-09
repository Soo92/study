<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
		public int num(int k){
			return k;
		}
%>
<!DOCTYPE htm>
<html>
<head>
<meta charset="UTF-8">
<title>Multiply</title>
</head>
<body>
<%
	for (int i=2; i<=9; ++i){
%>
	<iframe src="multiSub.jsp?i=<%=i%>" width="100" height="300" ></iframe>
<%} %>
</body>
</html>