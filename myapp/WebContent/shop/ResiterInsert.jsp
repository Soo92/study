<%@ page contentType="text/html;charset=EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="regMgr" class="shop.RegisterMgr" />
<jsp:useBean id="regBean" class="shop.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%boolean flag = regMgr.insertResiter(regBean);%>
<html>
<head>
<title>ȸ������ Ȯ��</title>
<link href="style.css" rel="stylesheet" type="text/css">
<html>
<body bgcolor="#FFFFCC">
<br/><br/>
<div align="center">
<%
if(flag){
	  out.println("<b>ȸ�������� ���� �帳�ϴ�.</b><p>");
	  out.println("<a href=Login.jsp>�α���</a>");
	}else{
	  out.println("<b>�ٽ� �Է��Ͽ� �ֽʽÿ�.</b><p>");
	  out.println("<a href=Register.jsp>�ٽ� ����</a>");
	}
%>
</div>
</body>
</html>

