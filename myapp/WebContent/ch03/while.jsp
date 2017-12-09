<%@page import="java.util.Random"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%!
		public String randomColor(){
			Random r = new Random();
			String rgb = Integer.toHexString(r.nextInt(256));
	 		rgb += Integer.toHexString(r.nextInt(256));
	 		rgb += Integer.toHexString(r.nextInt(256));
	 		return "#"+rgb;
		}
%>
<%
		request.setCharacterEncoding("euc-kr");
		String msg = request.getParameter("msg");
		int number = 
				Integer.parseInt(request.getParameter("number"));
		int cnt = 0;
		while(number>cnt){
			cnt++;
	%>
		<h3 ><font color="<%=randomColor()%>">
				<%=msg%></font></h3>
	<%}%>
	
	
	
	
	
	
	
	