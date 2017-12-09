<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
	int i;
	int j;
%>
<html>
<head>
<meta charset="UTF-8">
<title>multiply</title>
<style>
/*table {border-collalpse; collapse; = border: 2px solid} */
table {
	border: 1px solid red;
	background-color: lightcyan; width: 100px; height: 300px;
}
</style>
</head>
<body>
	<table border="1" width="600">
		<%
			for (i = 2; i <= 9; ++i) {
				out.println("<tr>");
				for (j = 1; j <= 9; ++j){
					out.println("<td>" + i + " x " + j + "=" + i * j + "</td>");
			   }
				out.println("</tr>");
		   }
		%>
	</table>
</body>
</html>