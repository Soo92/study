<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		//if.html���� name�̶� color ��û�ߴ�.
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		//out.println("name : " + name+"<br/>");
		//out.println("color : " + color+"<br/>");
		String msg;
		if(color.equals("blue")){
			msg = "�Ķ���";
		}else if(color.equals("red")){
			msg = "������";
		}else if(color.equals("orange")){
			msg = "��������";
		}else{
			msg = "��Ÿ��";
			color = "white";
		}
%>
<body bgcolor="<%=color%>">
<b><%=name%></b>���� �����ϴ� ������
<b><%=msg%></b>�Դϴ�.
</body>










