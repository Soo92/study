<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		boolean result = mgr.checkId(id);
%>
<link href="style.css" rel="stylesheet" type="text/css">
<body bgcolor="#FFFFCC">
<div align="center">
<br/><b><%=id%></b>
<%
		if(result){
			out.println("�� �̹� �����ϴ� ID�Դϴ�.<p/>");
		}else{
			out.println("�� ��� �����մϴ�.<p/>");
		}
%>
<a href="#" onclick="self.close()">�ݱ�</a>
</div>
</body>
