<%@page contentType="text/html;charset=EUC-KR"%>
<%@page import="shop.RegisterMgr" %>
<jsp:useBean id="regMgr" class="shop.RegisterMgr" />
<%
   		request.setCharacterEncoding("EUC-KR");
   		String id = request.getParameter("id");
   		boolean check = regMgr.checkId(id);
%>
<html>
<head>
<title>ID�ߺ�üũ</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script  src="script.js"></script>
</head>
<body bgcolor="#FFFFCC">
<br>
<div align="center">
<b><%=id%></b>
<%
	  if(check){
	     out.println("�� �̹� �����Ѵ� ID�Դϴ�.<p/>");
	}else{    
	     out.println("�� ��� ���� �մϴ�.<p/>");
	}
%>
<a href="javascript:this.close();">�ݱ�</a>
</div>
</body>
</html>