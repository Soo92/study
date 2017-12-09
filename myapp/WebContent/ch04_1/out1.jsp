<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page buffer="5kb" %>
<%
		request.setCharacterEncoding("euc-kr");
		int totalBuffer = out.getBufferSize();
		int remainBuffer = out.getRemaining();
		int useBuffer = totalBuffer - remainBuffer;
		
		out.println("totalBuffer : "+ totalBuffer +"<br/>");
		out.println("remainBuffer : "+remainBuffer + "<br/>");
		out.println("useBuffer : "+useBuffer  + "<br/>");
%>