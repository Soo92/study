<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int i  = Integer.parseInt(request.getParameter("i"));
	int j  = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>multiply</title>
<style>


table {
	border: 1px solid red;
	background-color: lightcyan; width: 100px; height: 300px;

</style>
</head>
<body>

<table>	
	<%
		for (j=1; j<= 9; ++j)
		out.println("<tr>" + "<td>" + "&nbsp&nbsp&nbsp"+
						i + "x" + j + "=" + i * j + "</td>" + "</tr>");
	%>
</table>
</body>
</html>