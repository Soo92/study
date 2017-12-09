<!-- expressionEx1.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!
		String name[] = {"Java","JSP","Android","Spring"};
%>
<!-- 표현식을 사용해서 테이블에 name배열을 출력하세요. -->
<table border="1">
	<tr>
		<th>번호</th>
		<th>과목</th>
	</tr>
	<% 
			for(int i=0;i<name.length;i++){
	%>
		<tr>
			<td><%=i+1%></td>
			<td><%=name[i]%></td>
		</tr>
	<%		
		}//----for
	%>
</table>








