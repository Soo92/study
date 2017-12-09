<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		//if.html에서 name이랑 color 요청했다.
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		//out.println("name : " + name+"<br/>");
		//out.println("color : " + color+"<br/>");
		String msg;
		if(color.equals("blue")){
			msg = "파란색";
		}else if(color.equals("red")){
			msg = "빨간색";
		}else if(color.equals("orange")){
			msg = "오렌지색";
		}else{
			msg = "기타색";
			color = "white";
		}
%>
<body bgcolor="<%=color%>">
<b><%=name%></b>님이 좋아하는 색깔은
<b><%=msg%></b>입니다.
</body>










